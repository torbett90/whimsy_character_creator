import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'database/database_initializer.dart';
import 'package:isar/isar.dart';
import 'models/dnd_class.dart';
import 'models/species.dart';
import 'models/background.dart';
import 'models/feat.dart';
import 'models/active_character_save.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseInitializer.initialize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      home: Scaffold(
        appBar: AppBar(title: const Text('Phase 1 Verification')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final isar = DatabaseInitializer.isar;
              
              // Query the first entry of each collection
              final warmage = await isar.dndClass.where().findFirst();
              final species = await isar.species.where().findFirst();
              final background = await isar.backgrounds.where().findFirst();
              final feat = await isar.feats.where().findFirst();

              // Print to the debug console in Android Studio
              print('\n--- PHASE 1 VALIDATION RESULTS ---');
              print('Class Seeded: ${warmage?.name ?? "FAILED"}');
              print('Species Seeded: ${species?.name ?? "FAILED"}');
              print('Background Seeded: ${background?.name ?? "FAILED"}');
              print('Feat Seeded: ${feat?.name ?? "FAILED"}');
              print('----------------------------------\n');
            },
            child: const Text('Run Database Query'),
          ),
        ),
      ),
    );
  }
}