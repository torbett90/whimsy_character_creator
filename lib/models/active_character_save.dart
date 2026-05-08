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
}
