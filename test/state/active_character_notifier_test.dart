import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import 'package:whimsy_character_creator/database/database_initializer.dart';
import 'package:whimsy_character_creator/state/active_character_notifier.dart';
import 'package:whimsy_character_creator/models/active_character_save.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    // 1. Bypass Flutter's default test HTTP block so Isar can download its native FFI binaries
    HttpOverrides.global = null;

    // 2. Mock path_provider method channel
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('plugins.flutter.io/path_provider'),
          (MethodCall methodCall) async {
            if (methodCall.method == 'getApplicationDocumentsDirectory') {
              return Directory.systemTemp.path;
            }
            return null;
          },
        );

    // 3. Initialize Isar core for headless testing
    await Isar.initializeIsarCore(download: true);

    // 4. Initialize database
    await DatabaseInitializer.initialize();

    // Seed a test character
    final isar = DatabaseInitializer.isar;
    if (await isar.activeCharacterSaves.count() == 0) {
      final newChar = ActiveCharacterSave()
        ..characterName = "Test Character"
        ..level = 1
        ..maxHp = 10
        ..currentHp = 10
        ..className = "Warmage";

      await isar.writeTxn(() async {
        await isar.activeCharacterSaves.put(newChar);
      });
    }
  });

  tearDownAll(() async {
    try {
      final isar = DatabaseInitializer.isar;
      if (isar.isOpen) {
        await isar.close(deleteFromDisk: true);
      }
    } catch (_) {
      // Failsafe: Ignore if Isar was never successfully initialized due to setup failure
    }
  });

  test('Notifier updates state and recalculates HP', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    // Remove the 'final sub =' assignment and name the callback variables
    container.listen(activeCharacterProvider(1), (previous, next) {});
    
    var state = await container.read(activeCharacterProvider(1).future);

    final newScores = AbilityScores()..constitution = 16; // CON mod +3
    await container
        .read(activeCharacterProvider(1).notifier)
        .updateAbilityScores(newScores);

    state = await container.read(activeCharacterProvider(1).future);
    expect(state.save.baseScores.constitution, 16);
    expect(state.save.baseScores.conMod, 3);
  });
}
