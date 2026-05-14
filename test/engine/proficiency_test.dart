import 'package:flutter_test/flutter_test.dart';
import 'package:whimsy_character_creator/utils/dnd_math.dart';

void main() {
  group('Proficiency Bonus Math', () {
    test('Calculates correct tier scaling', () {
      expect(calculateProficiencyBonus(1), 2);
      expect(calculateProficiencyBonus(4), 2);
      expect(calculateProficiencyBonus(5), 3);
      expect(calculateProficiencyBonus(9), 4);
      expect(calculateProficiencyBonus(13), 5);
      expect(calculateProficiencyBonus(17), 6);
      expect(calculateProficiencyBonus(20), 6);
    });
  });
}
