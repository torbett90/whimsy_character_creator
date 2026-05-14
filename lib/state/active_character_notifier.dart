import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';

import '../database/database_initializer.dart';
import '../models/active_character_save.dart';
import '../models/dnd_class.dart';
import '../models/species.dart';
import '../models/background.dart';
import '../utils/dnd_math.dart';

part 'active_character_notifier.freezed.dart';
part 'active_character_notifier.g.dart';

@freezed
class CharacterSheetState with _$CharacterSheetState {
  // Required for custom getters in Freezed
  const CharacterSheetState._();

  const factory CharacterSheetState({
    required ActiveCharacterSave save,
    DndClass? characterClass,
    Species? species,
    Background? background,
  }) = _CharacterSheetState;

  // --- DERIVED STATS ---
  // These are calculated instantly whenever the UI accesses them. No DB reads required.

  int get proficiencyBonus => calculateProficiencyBonus(save.level);

  // Base Initiative is Dexterity Modifier
  int get initiative => save.baseScores.dexMod;

  // Base Unarmored AC
  int get baseArmorClass => 10 + save.baseScores.dexMod;

  /// Calculates a specific saving throw by comparing the character's base modifier
  /// with the static rulebook proficiencies of their class.
  int getSavingThrow(String abilityName) {
    final baseMod = save.baseScores.getModifierByName(abilityName);

    // Check if the static class data grants proficiency in this save
    final isProficient =
        characterClass?.savingThrowProficiencies
            .map((e) => e.toLowerCase())
            .contains(abilityName.toLowerCase()) ??
        false;

    return baseMod + (isProficient ? proficiencyBonus : 0);
  }
}

@riverpod
class ActiveCharacter extends _$ActiveCharacter {
  @override
  Future<CharacterSheetState> build(int characterId) async {
    final isar = DatabaseInitializer.isar;

    final save = await isar.activeCharacterSaves.get(characterId);
    if (save == null) {
      throw Exception('Character save ID $characterId not found in Isar.');
    }

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

  Future<void> takeDamage(int amount) async {
    final currentState = state.valueOrNull;
    if (currentState == null) return;

    final updatedSave = currentState.save;
    updatedSave.currentHp = (updatedSave.currentHp - amount).clamp(
      0,
      updatedSave.maxHp,
    );

    await _persistSave(updatedSave);
    state = AsyncData(currentState.copyWith(save: updatedSave));
  }

  /// Updates ability scores and recalculates max HP based on standard rules
  Future<void> updateAbilityScores(AbilityScores newScores) async {
    final currentState = state.valueOrNull;
    if (currentState == null) return;

    final updatedSave = currentState.save;
    updatedSave.baseScores = newScores;

    if (currentState.characterClass != null) {
      updatedSave.maxHp = calculateStandardMaxHp(
        level: updatedSave.level,
        conMod: newScores.conMod,
        hitDie: currentState.characterClass!.hitDie,
      );

      // Auto-heal if max HP increases beyond current, or if uninitialized
      if (updatedSave.currentHp > updatedSave.maxHp ||
          updatedSave.currentHp == 0) {
        updatedSave.currentHp = updatedSave.maxHp;
      }
    }

    await _persistSave(updatedSave);
    state = AsyncData(currentState.copyWith(save: updatedSave));
  }

  /// Wraps Isar write transactions
  Future<void> _persistSave(ActiveCharacterSave save) async {
    final isar = DatabaseInitializer.isar;
    await isar.writeTxn(() async {
      await isar.activeCharacterSaves.put(save);
    });
  }
}
