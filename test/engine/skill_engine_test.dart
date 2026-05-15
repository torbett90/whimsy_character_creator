import 'package:flutter_test/flutter_test.dart';
import 'package:whimsy_character_creator/models/active_character_save.dart';
import 'package:whimsy_character_creator/state/active_character_notifier.dart';

void main() {
  group('Skill Engine & Passives', () {
    test('Calculates skilled vs unskilled modifiers and passive senses for Relic (Druid)', () {
      // Scaffold a Level 5 Druid (Proficiency Bonus: +3)
      final save = ActiveCharacterSave()
        ..characterName = "Relic"
        ..className = "Druid"
        ..level = 5
        ..baseScores = (AbilityScores()
          ..wisdom = 18       // WIS Mod: +4
          ..intelligence = 10 // INT Mod: +0
        )
        ..proficientSkills = ['Perception', 'Nature'];

      final state = CharacterSheetState(save: save);

      // Unskilled INT check (Nature is INT, but proficient)
      // INT Mod (0) + Prof (3) = 3
      expect(state.getSkillModifier('nature'), 3);

      // Unskilled WIS check (Survival)
      // WIS Mod (4) + Prof (0) = 4
      expect(state.getSkillModifier('survival'), 4);

      // Skilled WIS check (Perception)
      // WIS Mod (4) + Prof (3) = 7
      expect(state.getSkillModifier('perception'), 7);

      // Passive Senses (10 + Mod)
      expect(state.passivePerception, 17); // 10 + 7
      expect(state.passiveInsight, 14);    // 10 + 4 (Unskilled)
    });
  });
}