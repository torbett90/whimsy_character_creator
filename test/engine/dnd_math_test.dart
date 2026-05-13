import 'package:flutter_test/flutter_test.dart';
import 'package:whimsy_character_creator/utils/dnd_math.dart';
import 'package:whimsy_character_creator/models/active_character_save.dart';

void main() {
  group('Ability Score Modifiers', () {
    test('Calculates standard modifiers correctly', () {
      final scores = AbilityScores()
        ..strength = 8
        ..dexterity = 10
        ..constitution = 15
        ..intelligence = 20;

      expect(scores.strMod, -1);
      expect(scores.dexMod, 0);
      expect(scores.conMod, 2);
      expect(scores.intMod, 5);
    });
  });

  group('Hit Die & HP Calculations', () {
    test('Parses hit die strings', () {
      expect('d8'.maxHitDieValue, 8);
      expect('1d10'.maxHitDieValue, 10);
      expect('d8'.averageHitDieValue, 5); // (8/2) + 1
      expect('1d10'.averageHitDieValue, 6); // (10/2) + 1
    });

    test('Calculates Max HP for Level 1', () {
      final hp = calculateStandardMaxHp(level: 1, conMod: 2, hitDie: 'd10');
      expect(hp, 12); // 10 + 2
    });

    test('Calculates Max HP for Level 3', () {
      final hp = calculateStandardMaxHp(level: 3, conMod: 2, hitDie: 'd10');
      // L1: 10 + 2 = 12
      // L2: 6 + 2 = 8
      // L3: 6 + 2 = 8
      // Total: 28
      expect(hp, 28);
    });
  });
}