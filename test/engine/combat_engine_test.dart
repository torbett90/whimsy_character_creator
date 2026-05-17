import 'package:flutter_test/flutter_test.dart';
import 'package:whimsy_character_creator/models/active_character_save.dart';
import 'package:whimsy_character_creator/models/dnd_class.dart';
import 'package:whimsy_character_creator/state/active_character_notifier.dart';

void main() {
  group('Combat & Spellcasting Engine', () {
    test('Calculates Spell DC and Attacks dynamically for Warmage', () {
      // Scaffold a Level 5 Warmage (PB: +3)
      final save = ActiveCharacterSave()
        ..characterName = "Phase 3 Tester"
        ..level = 5
        ..baseScores = (AbilityScores()
          ..intelligence =
              18 // INT Mod: +4
          ..strength =
              14 // STR Mod: +2
          ..dexterity =
              16 // DEX Mod: +3
              );

      final warmageClass = DndClass()
        ..name = "Warmage"
        ..primaryAbilities = ["Intelligence"];

      final state = CharacterSheetState(
        save: save,
        characterClass: warmageClass,
      );

      // Spellcasting Mod should infer INT (+4)
      expect(state.spellcastingModifier, 4);

      // Spell Save DC: 8 + PB (3) + INT (4) = 15
      expect(state.spellSaveDC, 15);

      // Spell Attack: PB (3) + INT (4) = 7
      expect(state.spellAttackModifier, 7);

      // Melee/Ranged Baselines
      expect(state.baseMeleeAttack, 5); // STR (2) + PB (3)
      expect(state.baseRangedAttack, 6); // DEX (3) + PB (3)
    });
  });
}
