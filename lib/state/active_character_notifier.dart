import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';

import '../database/database_initializer.dart';
import '../models/active_character_save.dart';
import '../models/dnd_class.dart';
import '../models/species.dart';
import '../models/background.dart';

part 'active_character_notifier.freezed.dart';
part 'active_character_notifier.g.dart';

/// The hydrated, read-only state passed to the UI.
/// It combines the mutable save data with the static rulebook definitions.
@freezed
class CharacterSheetState with _$CharacterSheetState {
  const factory CharacterSheetState({
    required ActiveCharacterSave save,
    DndClass? characterClass,
    Species? species,
    Background? background,
  }) = _CharacterSheetState;
}

/// The Riverpod Notifier that controls the character state.
/// We pass [characterId] into the build method to allow managing multiple characters.
@riverpod
class ActiveCharacter extends _$ActiveCharacter {
  @override
  Future<CharacterSheetState> build(int characterId) async {
    final isar = DatabaseInitializer.isar;

    // 1. Load the active save
    final save = await isar.activeCharacterSaves.get(characterId);
    if (save == null) {
      throw Exception('Character save ID $characterId not found in Isar.');
    }

    // 2. Concurrently fetch the static rulebook pointers
    // Assuming ActiveCharacterSave has String fields like 'className', 'speciesName'
    final futures = await Future.wait([
      save.className != null
          ? isar.dndClass.filter().nameEqualTo(save.className!).findFirst()
          : Future.value(null),
      save.speciesName != null
          ? isar.species.filter().nameEqualTo(save.speciesName!).findFirst()
          : Future.value(null),
      save.backgroundName != null
          ? isar.backgrounds
                .filter()
                .nameEqualTo(save.backgroundName!)
                .findFirst()
          : Future.value(null),
    ]);

    return CharacterSheetState(
      save: save,
      characterClass: futures[0] as DndClass?,
      species: futures[1] as Species?,
      background: futures[2] as Background?,
    );
  }

  /// Example Mutation: Taking Damage
  Future<void> takeDamage(int amount) async {
    final currentState = state.valueOrNull;
    if (currentState == null) return;

    // Isar models are mutable, but we treat them as immutable in the UI layer.
    final updatedSave = currentState.save;

    // Assume you have currentHp and maxHp in your ActiveCharacterSave schema
    updatedSave.currentHp = (updatedSave.currentHp - amount).clamp(
      0,
      updatedSave.maxHp,
    );

    // 1. Persist to local NoSQL
    final isar = DatabaseInitializer.isar;
    await isar.writeTxn(() async {
      await isar.activeCharacterSaves.put(updatedSave);
    });

    // 2. Broadcast the update immediately to the UI without forcing a full DB re-fetch
    state = AsyncData(currentState.copyWith(save: updatedSave));
  }
}
