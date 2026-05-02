import 'dart:convert';
import 'package:isar/isar.dart';

part 'dnd_class.g.dart';

@collection
class DndClass {
  Id? id;

  @Index(unique: true, replace: true)
  late String name;
  
  late String description;
  late String hitDie;
  late List<String> primaryAbilities;
  late List<String> savingThrowProficiencies;
  late List<String> weaponProficiencies;
  late List<String> armorTraining;
  late ProficiencyChoice skillProficiencies;
  late List<ClassFeature> classFeatures;
  late List<SubclassData> subclasses;
  List<ClassSpecificFeature>? tricks;
  
  // Stored as JSON string in Isar due to map limitations
  late String progressionTableJson;

  // Manual deserialization for Riverpod to use later
  @ignore 
  Map<int, ProgressionStats> get progressionTable {
    if (progressionTableJson.isEmpty) return {};
    final map = jsonDecode(progressionTableJson) as Map<String, dynamic>;
    return map.map((key, value) => MapEntry(int.parse(key), ProgressionStats.fromJson(value)));
  }

  static DndClass fromJson(Map<String, dynamic> json) {
    final clazz = DndClass()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? ''
      ..hitDie = json['hit_die'] ?? json['hitDie'] ?? 'd8'
      ..primaryAbilities = List<String>.from(json['primary_abilities'] ?? json['primaryAbilities'] ?? [])
      ..savingThrowProficiencies = List<String>.from(json['saving_throw_proficiencies'] ?? json['savingThrowProficiencies'] ?? [])
      ..weaponProficiencies = List<String>.from(json['weapon_proficiencies'] ?? json['weaponProficiencies'] ?? [])
      ..armorTraining = List<String>.from(json['armor_training'] ?? json['armorTraining'] ?? [])
      ..skillProficiencies = ProficiencyChoice.fromJson(json['skill_proficiencies'] ?? json['skillProficiencies'] ?? <String, dynamic>{})
      
      // Strictly typed lists to prevent Isar List<dynamic> crashes
      ..classFeatures = ((json['class_features'] ?? json['classFeatures']) as List<dynamic>?)
          ?.map<ClassFeature>((e) => ClassFeature.fromJson(e as Map<String, dynamic>))
          .toList() ?? []
      ..subclasses = (json['subclasses'] as List<dynamic>?)
          ?.map<SubclassData>((e) => SubclassData.fromJson(e as Map<String, dynamic>))
          .toList() ?? []
      ..tricks = (json['tricks'] as List<dynamic>?)
          ?.map<ClassSpecificFeature>((e) => ClassSpecificFeature.fromJson(e as Map<String, dynamic>))
          .toList();

    // Handle Progression Table stringification
    final progMap = json['progression_table'] ?? json['progressionTable'] ?? {};
    clazz.progressionTableJson = jsonEncode(progMap);
    
    return clazz;
  }
}

@embedded
class ProgressionStats {
  int? proficiencyBonus;
  int? cantripsKnown;
  String? cantripBonusDice;
  int? tricksKnown;

  static ProgressionStats fromJson(Map<String, dynamic> json) {
    return ProgressionStats()
      ..proficiencyBonus = json['proficiency_bonus'] ?? json['proficiencyBonus'] ?? 2
      ..cantripsKnown = json['cantrips_known'] ?? json['cantripsKnown'] ?? 0
      ..cantripBonusDice = json['cantrip_bonus_dice'] ?? json['cantripBonusDice'] ?? '0'
      ..tricksKnown = json['tricks_known'] ?? json['tricksKnown'] ?? 0;
  }
}

@embedded
class ProficiencyChoice {
  int? choose;
  List<String>? options;

  static ProficiencyChoice fromJson(Map<String, dynamic> json) {
    return ProficiencyChoice()
      ..choose = json['choose'] as int? ?? 0
      ..options = List<String>.from(json['options'] ?? []);
  }
}

@embedded
class ClassFeature {
  int? level;
  String? name;
  String? description;

  static ClassFeature fromJson(Map<String, dynamic> json) {
    return ClassFeature()
      ..level = json['level'] as int? ?? 0
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? '';
  }
}

@embedded
class SubclassData {
  String? name;
  List<ClassFeature>? features;

  static SubclassData fromJson(Map<String, dynamic> json) {
    return SubclassData()
      ..name = json['name'] as String? ?? ''
      
      // Strictly typed list
      ..features = (json['features'] as List<dynamic>?)
          ?.map<ClassFeature>((e) => ClassFeature.fromJson(e as Map<String, dynamic>))
          .toList() ?? [];
  }
}

@embedded
class ClassSpecificFeature {
  String? name;
  String? description;

  static ClassSpecificFeature fromJson(Map<String, dynamic> json) {
    return ClassSpecificFeature()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? '';
  }
}