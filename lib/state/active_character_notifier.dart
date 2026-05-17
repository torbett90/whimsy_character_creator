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
  const CharacterSheetState._();

  const factory CharacterSheetState({
    required ActiveCharacterSave save,
    DndClass? characterClass,
    Species? species,
    Background? background,
  }) = _CharacterSheetState;

  int get proficiencyBonus => calculateProficiencyBonus(save.level);

  int get initiative => save.baseScores.dexMod;

  int get baseArmorClass => 10 + save.baseScores.dexMod;

  int getSavingThrow(String abilityName) {
    final baseMod = save.baseScores.getModifierByName(abilityName);

    final isProficient =
        characterClass?.savingThrowProficiencies
            .map((e) => e.toLowerCase())
            .contains(abilityName.toLowerCase()) ??
        false;

    return baseMod + (isProficient ? proficiencyBonus : 0);
  }

  int getSkillModifier(String skillName) {
    final normalizedSkill = skillName.toLowerCase();
    final governingAbility = skillToAbilityMap[normalizedSkill];
    
    if (governingAbility == null) {
      return 0;
    }

    final baseMod = save.baseScores.getModifierByName(governingAbility);

    final isProficient = save.proficientSkills
        .map((e) => e.toLowerCase())
        .contains(normalizedSkill);

    return baseMod + (isProficient ? proficiencyBonus : 0);
  }

  int get passivePerception => 10 + getSkillModifier('perception');
  int get passiveInsight => 10 + getSkillModifier('insight');
  int get passiveInvestigation => 10 + getSkillModifier('investigation');

  // --- COMBAT & SPELLCASTING ---

  /// Dynamically infers the spellcasting modifier from the class's primary abilities array
  int get spellcastingModifier {
    if (characterClass == null || characterClass!.primaryAbilities.isEmpty) {
      return 0; 
    }
    final primaryAbility = characterClass!.primaryAbilities.first;
    return save.baseScores.getModifierByName(primaryAbility);
  }

  /// D&D 2024 Standard: 8 + PB + Spellcasting Mod
  int get spellSaveDC => 8 + proficiencyBonus + spellcastingModifier;

  /// D&D 2024 Standard: PB + Spellcasting Mod
  int get spellAttackModifier => proficiencyBonus + spellcastingModifier;

  /// Base Unarmed / Generic Melee Attack (STR Mod + PB)
  int get baseMeleeAttack => save.baseScores.strMod + proficiencyBonus;

  /// Base Generic Ranged Attack (DEX Mod + PB)
  int get baseRangedAttack => save.baseScores.dexMod + proficiencyBonus;
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

    // Wrapped in curly braces for linter compliance
    if (currentState == null) {
      return;
    }

    final updatedSave = currentState.save;
    updatedSave.currentHp = (updatedSave.currentHp - amount).clamp(
      0,
      updatedSave.maxHp,
    );

    await _persistSave(updatedSave);
    state = AsyncData(currentState.copyWith(save: updatedSave));
  }

  Future<void> updateAbilityScores(AbilityScores newScores) async {
    final currentState = state.valueOrNull;

    // Wrapped in curly braces for linter compliance
    if (currentState == null) {
      return;
    }

    final updatedSave = currentState.save;
    updatedSave.baseScores = newScores;

    if (currentState.characterClass != null) {
      updatedSave.maxHp = calculateStandardMaxHp(
        level: updatedSave.level,
        conMod: newScores.conMod,
        hitDie: currentState.characterClass!.hitDie,
      );

      if (updatedSave.currentHp > updatedSave.maxHp ||
          updatedSave.currentHp == 0) {
        updatedSave.currentHp = updatedSave.maxHp;
      }
    }

    await _persistSave(updatedSave);
    state = AsyncData(currentState.copyWith(save: updatedSave));
  }

  Future<void> _persistSave(ActiveCharacterSave save) async {
    final isar = DatabaseInitializer.isar;
    await isar.writeTxn(() async {
      await isar.activeCharacterSaves.put(save);
    });
  }
}
