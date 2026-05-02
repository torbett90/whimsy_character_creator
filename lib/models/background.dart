import 'package:isar/isar.dart';

part 'background.g.dart';

@collection
class Background {
  Id? id;

  @Index(unique: true, replace: true)
  late String name;
  
  late String description;
  late List<String> skillProficiencies;
  late List<String> toolProficiencies;
  late List<String> startingEquipment;
  late String originFeat;
  late List<String> asiOptions;

  static Background fromJson(Map<String, dynamic> json) {
    return Background()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? ''
      ..skillProficiencies = List<String>.from(json['skill_proficiencies'] ?? json['skillProficiencies'] ?? [])
      ..toolProficiencies = List<String>.from(json['tool_proficiencies'] ?? json['toolProficiencies'] ?? [])
      ..startingEquipment = List<String>.from(json['starting_equipment'] ?? json['startingEquipment'] ?? [])
      ..originFeat = json['origin_feat'] ?? json['originFeat'] ?? ''
      ..asiOptions = List<String>.from(json['asi_options'] ?? json['asiOptions'] ?? []);
  }
}