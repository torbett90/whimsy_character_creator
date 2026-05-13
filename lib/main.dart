import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';

import 'database/database_initializer.dart';
import 'models/active_character_save.dart';
import 'state/active_character_notifier.dart'; // Ensure this matches your path

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseInitializer.initialize();

  // Inject a dummy save for Phase 2 UI testing if one doesn't exist
  await _bootstrapDummyCharacter();

  runApp(const ProviderScope(child: MyApp()));
}

/// Creates a mutable player save that points to your Phase 1 static rulebook data
Future<void> _bootstrapDummyCharacter() async {
  final isar = DatabaseInitializer.isar;
  if (await isar.activeCharacterSaves.count() == 0) {
    final newChar = ActiveCharacterSave()
      ..characterName = "Phase 2 Test Build"
      ..level = 1
      ..maxHp = 10
      ..currentHp = 10
      ..className =
          "Warmage" // Must match the exact string in your JSON
      ..speciesName = "Plushie";

    await isar.writeTxn(() async {
      await isar.activeCharacterSaves.put(newChar);
    });
    log('Bootstrapped dummy character save ID: 1.');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whimsy Character Creator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CharacterDashboard(),
    );
  }
}

/// A ConsumerWidget allows Riverpod to rebuild only this widget when state changes
class CharacterDashboard extends ConsumerWidget {
  const CharacterDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch Character ID 1. This triggers the build() method in your notifier.
    final characterAsync = ref.watch(activeCharacterProvider(1));

    return Scaffold(
      appBar: AppBar(title: const Text('Phase 2: Riverpod State Engine')),
      // .when handles the Future's Loading, Error, and Data states automatically
      body: characterAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.save.characterName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Display the data merged from the static rulebook
                Text('Class: ${state.characterClass?.name ?? "Unknown"}'),
                Text('Species: ${state.species?.name ?? "Unknown"}'),
                const SizedBox(height: 30),

                // Display Mutable State
                Text(
                  'HP: ${state.save.currentHp} / ${state.save.maxHp}',
                  style: const TextStyle(fontSize: 48, color: Colors.red),
                ),
                const SizedBox(height: 20),

                // Trigger the mutation
                ElevatedButton.icon(
                  onPressed: () {
                    // Use ref.read() for one-off actions/mutations in callbacks
                    ref.read(activeCharacterProvider(1).notifier).takeDamage(1);
                  },
                  icon: const Icon(Icons.local_fire_department),
                  label: const Text('Take 1 Damage'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
