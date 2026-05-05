import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

// Domain Models
import '../models/dnd_class.dart';
import '../models/species.dart';
import '../models/background.dart';
import '../models/feat.dart';
import '../models/active_character_save.dart';

class DatabaseInitializer {
  static late Isar isar;

  static Future<void> initialize() async {
    String? dbPath;

    // Conditionally bypass native file system on web targets
    if (!kIsWeb) {
      final dir = await getApplicationDocumentsDirectory();
      dbPath = dir.path;
    }

    // Open Isar with all five schemas required for the MVP
    isar = await Isar.open([
      DndClassSchema,
      SpeciesSchema,
      BackgroundSchema,
      FeatSchema,
      ActiveCharacterSaveSchema,
    ], directory: dbPath ?? ''); // Web uses IndexedDB and ignores this, but it cannot be null

    // Guard clause: If the static rulebook data already exists, skip the seeding process
    if (await isar.dndClass.count() > 0) return;

    // Seed the MVP data inside a single transaction
    await isar.writeTxn(() async {
      // 1. Load MVP Class (Warmage)
      final warmageString = await rootBundle.loadString(
        'assets/classes/warmage_fixed.json',
      );
      final warmageJson = jsonDecode(warmageString);
      final warmage = DndClass.fromJson(warmageJson['class'] ?? warmageJson);
      await isar.dndClass.put(warmage);

      // 2. Load MVP Species (Plushie)
      // Note: Comment this block out if plushie.json has not been generated yet
      final plushieString = await rootBundle.loadString(
        'assets/species/plushie.json',
      );
      final plushieJson = jsonDecode(plushieString);
      final plushie = Species.fromJson(plushieJson['species'] ?? plushieJson);
      await isar.species.put(plushie);

      // 3. Load MVP Background (Criminal)
      // Note: Comment this block out if criminal.json has not been generated yet
      final criminalString = await rootBundle.loadString(
        'assets/backgrounds/criminal.json',
      );
      final criminalJson = jsonDecode(criminalString);
      final criminal = Background.fromJson(
        criminalJson['background'] ?? criminalJson,
      );
      await isar.backgrounds.put(criminal);

      // 4. Load MVP Feat (Alert)
      // Note: Comment this block out if alert.json has not been generated yet
      final alertString = await rootBundle.loadString(
        'assets/feats/alert.json',
      );
      final alertJson = jsonDecode(alertString);
      final alert = Feat.fromJson(alertJson['feat'] ?? alertJson);
      await isar.feats.put(alert);
    });
  }
}