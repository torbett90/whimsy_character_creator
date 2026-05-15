import 'package:isar/isar.dart';

part 'active_character_save.g.dart';

@collection
class ActiveCharacterSave {
  Id id = Isar.autoIncrement;

  // Core Identity
  late String characterName;
  int level = 1;
  int currentHp = 0;
  int maxHp = 0;
  int temporaryHp = 0;

  // Pointers to the Rulebook Collections
  String? className;
  String? subclass;
  String? speciesName;
  String? backgroundName;

  // Mutable State Lists
  List<String> inventory = [];
  List<String> selectedSpells = [];
  List<String> selectedFeatures = [];
  List<String> proficientSkills = [];

  // Core Stats
  AbilityScores baseScores = AbilityScores();
}

@embedded
class AbilityScores {
  int strength = 10;
  int dexterity = 10;
  int constitution = 10;
  int intelligence = 10;
  int wisdom = 10;
  int charisma = 10;

  @ignore
  int get strMod => _calculateModifier(strength);
  @ignore
  int get dexMod => _calculateModifier(dexterity);
  @ignore
  int get conMod => _calculateModifier(constitution);
  @ignore
  int get intMod => _calculateModifier(intelligence);
  @ignore
  int get wisMod => _calculateModifier(wisdom);
  @ignore
  int get chaMod => _calculateModifier(charisma);

  int getModifierByName(String abilityName) {
    switch (abilityName.toLowerCase()) {
      case 'strength':
      case 'str':
        return strMod;
      case 'dexterity':
      case 'dex':
        return dexMod;
      case 'constitution':
      case 'con':
        return conMod;
      case 'intelligence':
      case 'int':
        return intMod;
      case 'wisdom':
      case 'wis':
        return wisMod;
      case 'charisma':
      case 'cha':
        return chaMod;
      default:
        return 0;
    }
  }

  int _calculateModifier(int score) => ((score - 10) / 2).floor();
}
