import 'package:isar/isar.dart';

part 'feat.g.dart';

@collection
class Feat {
  Id? id;

  @Index(unique: true, replace: true)
  late String name;

  @Index() // Allows Riverpod to easily query feats by type
  late String category; 

  late String description;
  late String prerequisite;
  late List<String> asiOptions;
  late List<FeatBenefit> benefits;

  static Feat fromJson(Map<String, dynamic> json) {
    return Feat()
      ..name = json['name'] as String? ?? ''
      ..category = json['category'] as String? ?? 'General'
      ..description = json['description'] as String? ?? ''
      ..prerequisite = json['prerequisite'] as String? ?? 'None'
      ..asiOptions = List<String>.from(json['asi_options'] ?? json['asiOptions'] ?? [])
      ..benefits = (json['benefits'] as List<dynamic>?)
              ?.map((e) => FeatBenefit.fromJson(e as Map<String, dynamic>))
              .toList() ?? [];
  }
}

@embedded
class FeatBenefit {
  String? name;
  String? description;

  static FeatBenefit fromJson(Map<String, dynamic> json) {
    return FeatBenefit()
      ..name = json['name'] as String? ?? ''
      ..description = json['description'] as String? ?? '';
  }
}