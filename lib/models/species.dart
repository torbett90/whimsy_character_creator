import 'package:isar/isar.dart';

part 'species.g.dart';

@collection
class Species {
  Id? id;
  
  @Index(unique: true, replace: true)
  late String name;
  
  late String description;
  late int speed;
  late String size;
  late List<SpeciesTrait> traits;

  static Species fromJson(Map<String, dynamic> json) {
    return Species()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? ''
      ..speed = json['speed'] as int? ?? 30
      ..size = json['size'] as String? ?? 'Medium'
      ..traits = (json['traits'] as List<dynamic>?)
              ?.map((e) => SpeciesTrait.fromJson(e as Map<String, dynamic>))
              .toList() ?? [];
  }
}

@embedded
class SpeciesTrait {
  String? name;
  String? description;

  static SpeciesTrait fromJson(Map<String, dynamic> json) {
    return SpeciesTrait()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? '';
  }
}