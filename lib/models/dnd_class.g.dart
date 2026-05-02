// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dnd_class.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDndClassCollection on Isar {
  IsarCollection<DndClass> get dndClass => this.collection();
}

const DndClassSchema = CollectionSchema(
  name: r'DndClass',
  id: 2172172003195055297,
  properties: {
    r'armorTraining': PropertySchema(
      id: 0,
      name: r'armorTraining',
      type: IsarType.stringList,
    ),
    r'classFeatures': PropertySchema(
      id: 1,
      name: r'classFeatures',
      type: IsarType.objectList,
      target: r'ClassFeature',
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'hitDie': PropertySchema(
      id: 3,
      name: r'hitDie',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'primaryAbilities': PropertySchema(
      id: 5,
      name: r'primaryAbilities',
      type: IsarType.stringList,
    ),
    r'progressionTableJson': PropertySchema(
      id: 6,
      name: r'progressionTableJson',
      type: IsarType.string,
    ),
    r'savingThrowProficiencies': PropertySchema(
      id: 7,
      name: r'savingThrowProficiencies',
      type: IsarType.stringList,
    ),
    r'skillProficiencies': PropertySchema(
      id: 8,
      name: r'skillProficiencies',
      type: IsarType.object,
      target: r'ProficiencyChoice',
    ),
    r'subclasses': PropertySchema(
      id: 9,
      name: r'subclasses',
      type: IsarType.objectList,
      target: r'SubclassData',
    ),
    r'tricks': PropertySchema(
      id: 10,
      name: r'tricks',
      type: IsarType.objectList,
      target: r'ClassSpecificFeature',
    ),
    r'weaponProficiencies': PropertySchema(
      id: 11,
      name: r'weaponProficiencies',
      type: IsarType.stringList,
    )
  },
  estimateSize: _dndClassEstimateSize,
  serialize: _dndClassSerialize,
  deserialize: _dndClassDeserialize,
  deserializeProp: _dndClassDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'ProficiencyChoice': ProficiencyChoiceSchema,
    r'ClassFeature': ClassFeatureSchema,
    r'SubclassData': SubclassDataSchema,
    r'ClassSpecificFeature': ClassSpecificFeatureSchema
  },
  getId: _dndClassGetId,
  getLinks: _dndClassGetLinks,
  attach: _dndClassAttach,
  version: '3.1.0+1',
);

int _dndClassEstimateSize(
  DndClass object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.armorTraining.length * 3;
  {
    for (var i = 0; i < object.armorTraining.length; i++) {
      final value = object.armorTraining[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.classFeatures.length * 3;
  {
    final offsets = allOffsets[ClassFeature]!;
    for (var i = 0; i < object.classFeatures.length; i++) {
      final value = object.classFeatures[i];
      bytesCount += ClassFeatureSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.hitDie.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.primaryAbilities.length * 3;
  {
    for (var i = 0; i < object.primaryAbilities.length; i++) {
      final value = object.primaryAbilities[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.progressionTableJson.length * 3;
  bytesCount += 3 + object.savingThrowProficiencies.length * 3;
  {
    for (var i = 0; i < object.savingThrowProficiencies.length; i++) {
      final value = object.savingThrowProficiencies[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 +
      ProficiencyChoiceSchema.estimateSize(object.skillProficiencies,
          allOffsets[ProficiencyChoice]!, allOffsets);
  bytesCount += 3 + object.subclasses.length * 3;
  {
    final offsets = allOffsets[SubclassData]!;
    for (var i = 0; i < object.subclasses.length; i++) {
      final value = object.subclasses[i];
      bytesCount += SubclassDataSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final list = object.tricks;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ClassSpecificFeature]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ClassSpecificFeatureSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  bytesCount += 3 + object.weaponProficiencies.length * 3;
  {
    for (var i = 0; i < object.weaponProficiencies.length; i++) {
      final value = object.weaponProficiencies[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _dndClassSerialize(
  DndClass object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.armorTraining);
  writer.writeObjectList<ClassFeature>(
    offsets[1],
    allOffsets,
    ClassFeatureSchema.serialize,
    object.classFeatures,
  );
  writer.writeString(offsets[2], object.description);
  writer.writeString(offsets[3], object.hitDie);
  writer.writeString(offsets[4], object.name);
  writer.writeStringList(offsets[5], object.primaryAbilities);
  writer.writeString(offsets[6], object.progressionTableJson);
  writer.writeStringList(offsets[7], object.savingThrowProficiencies);
  writer.writeObject<ProficiencyChoice>(
    offsets[8],
    allOffsets,
    ProficiencyChoiceSchema.serialize,
    object.skillProficiencies,
  );
  writer.writeObjectList<SubclassData>(
    offsets[9],
    allOffsets,
    SubclassDataSchema.serialize,
    object.subclasses,
  );
  writer.writeObjectList<ClassSpecificFeature>(
    offsets[10],
    allOffsets,
    ClassSpecificFeatureSchema.serialize,
    object.tricks,
  );
  writer.writeStringList(offsets[11], object.weaponProficiencies);
}

DndClass _dndClassDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DndClass();
  object.armorTraining = reader.readStringList(offsets[0]) ?? [];
  object.classFeatures = reader.readObjectList<ClassFeature>(
        offsets[1],
        ClassFeatureSchema.deserialize,
        allOffsets,
        ClassFeature(),
      ) ??
      [];
  object.description = reader.readString(offsets[2]);
  object.hitDie = reader.readString(offsets[3]);
  object.id = id;
  object.name = reader.readString(offsets[4]);
  object.primaryAbilities = reader.readStringList(offsets[5]) ?? [];
  object.progressionTableJson = reader.readString(offsets[6]);
  object.savingThrowProficiencies = reader.readStringList(offsets[7]) ?? [];
  object.skillProficiencies = reader.readObjectOrNull<ProficiencyChoice>(
        offsets[8],
        ProficiencyChoiceSchema.deserialize,
        allOffsets,
      ) ??
      ProficiencyChoice();
  object.subclasses = reader.readObjectList<SubclassData>(
        offsets[9],
        SubclassDataSchema.deserialize,
        allOffsets,
        SubclassData(),
      ) ??
      [];
  object.tricks = reader.readObjectList<ClassSpecificFeature>(
    offsets[10],
    ClassSpecificFeatureSchema.deserialize,
    allOffsets,
    ClassSpecificFeature(),
  );
  object.weaponProficiencies = reader.readStringList(offsets[11]) ?? [];
  return object;
}

P _dndClassDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readObjectList<ClassFeature>(
            offset,
            ClassFeatureSchema.deserialize,
            allOffsets,
            ClassFeature(),
          ) ??
          []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readObjectOrNull<ProficiencyChoice>(
            offset,
            ProficiencyChoiceSchema.deserialize,
            allOffsets,
          ) ??
          ProficiencyChoice()) as P;
    case 9:
      return (reader.readObjectList<SubclassData>(
            offset,
            SubclassDataSchema.deserialize,
            allOffsets,
            SubclassData(),
          ) ??
          []) as P;
    case 10:
      return (reader.readObjectList<ClassSpecificFeature>(
        offset,
        ClassSpecificFeatureSchema.deserialize,
        allOffsets,
        ClassSpecificFeature(),
      )) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dndClassGetId(DndClass object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dndClassGetLinks(DndClass object) {
  return [];
}

void _dndClassAttach(IsarCollection<dynamic> col, Id id, DndClass object) {
  object.id = id;
}

extension DndClassByIndex on IsarCollection<DndClass> {
  Future<DndClass?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  DndClass? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<DndClass?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<DndClass?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<Id> putByName(DndClass object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(DndClass object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<DndClass> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<DndClass> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension DndClassQueryWhereSort on QueryBuilder<DndClass, DndClass, QWhere> {
  QueryBuilder<DndClass, DndClass, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DndClassQueryWhere on QueryBuilder<DndClass, DndClass, QWhereClause> {
  QueryBuilder<DndClass, DndClass, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DndClassQueryFilter
    on QueryBuilder<DndClass, DndClass, QFilterCondition> {
  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'armorTraining',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'armorTraining',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'armorTraining',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armorTraining',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'armorTraining',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      armorTrainingLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'armorTraining',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      classFeaturesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'classFeatures',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hitDie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hitDie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hitDie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hitDie',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> hitDieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hitDie',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryAbilities',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryAbilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryAbilities',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryAbilities',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryAbilities',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      primaryAbilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'primaryAbilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressionTableJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'progressionTableJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'progressionTableJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressionTableJson',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      progressionTableJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'progressionTableJson',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'savingThrowProficiencies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'savingThrowProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'savingThrowProficiencies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'savingThrowProficiencies',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'savingThrowProficiencies',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      savingThrowProficienciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'savingThrowProficiencies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      subclassesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> subclassesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      subclassesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      subclassesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      subclassesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      subclassesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subclasses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tricks',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tricks',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      tricksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tricks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weaponProficiencies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weaponProficiencies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weaponProficiencies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weaponProficiencies',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weaponProficiencies',
        value: '',
      ));
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition>
      weaponProficienciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weaponProficiencies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension DndClassQueryObject
    on QueryBuilder<DndClass, DndClass, QFilterCondition> {
  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> classFeaturesElement(
      FilterQuery<ClassFeature> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'classFeatures');
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> skillProficiencies(
      FilterQuery<ProficiencyChoice> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'skillProficiencies');
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> subclassesElement(
      FilterQuery<SubclassData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'subclasses');
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterFilterCondition> tricksElement(
      FilterQuery<ClassSpecificFeature> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tricks');
    });
  }
}

extension DndClassQueryLinks
    on QueryBuilder<DndClass, DndClass, QFilterCondition> {}

extension DndClassQuerySortBy on QueryBuilder<DndClass, DndClass, QSortBy> {
  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByHitDie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hitDie', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByHitDieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hitDie', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> sortByProgressionTableJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressionTableJson', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy>
      sortByProgressionTableJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressionTableJson', Sort.desc);
    });
  }
}

extension DndClassQuerySortThenBy
    on QueryBuilder<DndClass, DndClass, QSortThenBy> {
  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByHitDie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hitDie', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByHitDieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hitDie', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy> thenByProgressionTableJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressionTableJson', Sort.asc);
    });
  }

  QueryBuilder<DndClass, DndClass, QAfterSortBy>
      thenByProgressionTableJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressionTableJson', Sort.desc);
    });
  }
}

extension DndClassQueryWhereDistinct
    on QueryBuilder<DndClass, DndClass, QDistinct> {
  QueryBuilder<DndClass, DndClass, QDistinct> distinctByArmorTraining() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'armorTraining');
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByHitDie(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hitDie', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByPrimaryAbilities() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryAbilities');
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByProgressionTableJson(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressionTableJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct>
      distinctBySavingThrowProficiencies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'savingThrowProficiencies');
    });
  }

  QueryBuilder<DndClass, DndClass, QDistinct> distinctByWeaponProficiencies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weaponProficiencies');
    });
  }
}

extension DndClassQueryProperty
    on QueryBuilder<DndClass, DndClass, QQueryProperty> {
  QueryBuilder<DndClass, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DndClass, List<String>, QQueryOperations>
      armorTrainingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'armorTraining');
    });
  }

  QueryBuilder<DndClass, List<ClassFeature>, QQueryOperations>
      classFeaturesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'classFeatures');
    });
  }

  QueryBuilder<DndClass, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<DndClass, String, QQueryOperations> hitDieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hitDie');
    });
  }

  QueryBuilder<DndClass, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DndClass, List<String>, QQueryOperations>
      primaryAbilitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryAbilities');
    });
  }

  QueryBuilder<DndClass, String, QQueryOperations>
      progressionTableJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressionTableJson');
    });
  }

  QueryBuilder<DndClass, List<String>, QQueryOperations>
      savingThrowProficienciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'savingThrowProficiencies');
    });
  }

  QueryBuilder<DndClass, ProficiencyChoice, QQueryOperations>
      skillProficienciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skillProficiencies');
    });
  }

  QueryBuilder<DndClass, List<SubclassData>, QQueryOperations>
      subclassesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subclasses');
    });
  }

  QueryBuilder<DndClass, List<ClassSpecificFeature>?, QQueryOperations>
      tricksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tricks');
    });
  }

  QueryBuilder<DndClass, List<String>, QQueryOperations>
      weaponProficienciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weaponProficiencies');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProgressionStatsSchema = Schema(
  name: r'ProgressionStats',
  id: -7633623067392375276,
  properties: {
    r'cantripBonusDice': PropertySchema(
      id: 0,
      name: r'cantripBonusDice',
      type: IsarType.string,
    ),
    r'cantripsKnown': PropertySchema(
      id: 1,
      name: r'cantripsKnown',
      type: IsarType.long,
    ),
    r'proficiencyBonus': PropertySchema(
      id: 2,
      name: r'proficiencyBonus',
      type: IsarType.long,
    ),
    r'tricksKnown': PropertySchema(
      id: 3,
      name: r'tricksKnown',
      type: IsarType.long,
    )
  },
  estimateSize: _progressionStatsEstimateSize,
  serialize: _progressionStatsSerialize,
  deserialize: _progressionStatsDeserialize,
  deserializeProp: _progressionStatsDeserializeProp,
);

int _progressionStatsEstimateSize(
  ProgressionStats object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cantripBonusDice;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _progressionStatsSerialize(
  ProgressionStats object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cantripBonusDice);
  writer.writeLong(offsets[1], object.cantripsKnown);
  writer.writeLong(offsets[2], object.proficiencyBonus);
  writer.writeLong(offsets[3], object.tricksKnown);
}

ProgressionStats _progressionStatsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProgressionStats();
  object.cantripBonusDice = reader.readStringOrNull(offsets[0]);
  object.cantripsKnown = reader.readLongOrNull(offsets[1]);
  object.proficiencyBonus = reader.readLongOrNull(offsets[2]);
  object.tricksKnown = reader.readLongOrNull(offsets[3]);
  return object;
}

P _progressionStatsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProgressionStatsQueryFilter
    on QueryBuilder<ProgressionStats, ProgressionStats, QFilterCondition> {
  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cantripBonusDice',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cantripBonusDice',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantripBonusDice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cantripBonusDice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cantripBonusDice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantripBonusDice',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripBonusDiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cantripBonusDice',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cantripsKnown',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cantripsKnown',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantripsKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantripsKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantripsKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      cantripsKnownBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantripsKnown',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'proficiencyBonus',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'proficiencyBonus',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proficiencyBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proficiencyBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proficiencyBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      proficiencyBonusBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proficiencyBonus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tricksKnown',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tricksKnown',
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tricksKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tricksKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tricksKnown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgressionStats, ProgressionStats, QAfterFilterCondition>
      tricksKnownBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tricksKnown',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProgressionStatsQueryObject
    on QueryBuilder<ProgressionStats, ProgressionStats, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProficiencyChoiceSchema = Schema(
  name: r'ProficiencyChoice',
  id: 7304241020690626388,
  properties: {
    r'choose': PropertySchema(
      id: 0,
      name: r'choose',
      type: IsarType.long,
    ),
    r'options': PropertySchema(
      id: 1,
      name: r'options',
      type: IsarType.stringList,
    )
  },
  estimateSize: _proficiencyChoiceEstimateSize,
  serialize: _proficiencyChoiceSerialize,
  deserialize: _proficiencyChoiceDeserialize,
  deserializeProp: _proficiencyChoiceDeserializeProp,
);

int _proficiencyChoiceEstimateSize(
  ProficiencyChoice object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.options;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _proficiencyChoiceSerialize(
  ProficiencyChoice object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.choose);
  writer.writeStringList(offsets[1], object.options);
}

ProficiencyChoice _proficiencyChoiceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProficiencyChoice();
  object.choose = reader.readLongOrNull(offsets[0]);
  object.options = reader.readStringList(offsets[1]);
  return object;
}

P _proficiencyChoiceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProficiencyChoiceQueryFilter
    on QueryBuilder<ProficiencyChoice, ProficiencyChoice, QFilterCondition> {
  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'choose',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'choose',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'choose',
        value: value,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'choose',
        value: value,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'choose',
        value: value,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      chooseBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'choose',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'options',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'options',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'options',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'options',
        value: '',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'options',
        value: '',
      ));
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProficiencyChoice, ProficiencyChoice, QAfterFilterCondition>
      optionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ProficiencyChoiceQueryObject
    on QueryBuilder<ProficiencyChoice, ProficiencyChoice, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ClassFeatureSchema = Schema(
  name: r'ClassFeature',
  id: 1694503919613836680,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'level': PropertySchema(
      id: 1,
      name: r'level',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _classFeatureEstimateSize,
  serialize: _classFeatureSerialize,
  deserialize: _classFeatureDeserialize,
  deserializeProp: _classFeatureDeserializeProp,
);

int _classFeatureEstimateSize(
  ClassFeature object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _classFeatureSerialize(
  ClassFeature object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeLong(offsets[1], object.level);
  writer.writeString(offsets[2], object.name);
}

ClassFeature _classFeatureDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClassFeature();
  object.description = reader.readStringOrNull(offsets[0]);
  object.level = reader.readLongOrNull(offsets[1]);
  object.name = reader.readStringOrNull(offsets[2]);
  return object;
}

P _classFeatureDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ClassFeatureQueryFilter
    on QueryBuilder<ClassFeature, ClassFeature, QFilterCondition> {
  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> levelEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      levelGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> levelLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> levelBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassFeature, ClassFeature, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ClassFeatureQueryObject
    on QueryBuilder<ClassFeature, ClassFeature, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SubclassDataSchema = Schema(
  name: r'SubclassData',
  id: 8706623314401357424,
  properties: {
    r'features': PropertySchema(
      id: 0,
      name: r'features',
      type: IsarType.objectList,
      target: r'ClassFeature',
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _subclassDataEstimateSize,
  serialize: _subclassDataSerialize,
  deserialize: _subclassDataDeserialize,
  deserializeProp: _subclassDataDeserializeProp,
);

int _subclassDataEstimateSize(
  SubclassData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.features;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ClassFeature]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              ClassFeatureSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _subclassDataSerialize(
  SubclassData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ClassFeature>(
    offsets[0],
    allOffsets,
    ClassFeatureSchema.serialize,
    object.features,
  );
  writer.writeString(offsets[1], object.name);
}

SubclassData _subclassDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SubclassData();
  object.features = reader.readObjectList<ClassFeature>(
    offsets[0],
    ClassFeatureSchema.deserialize,
    allOffsets,
    ClassFeature(),
  );
  object.name = reader.readStringOrNull(offsets[1]);
  return object;
}

P _subclassDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ClassFeature>(
        offset,
        ClassFeatureSchema.deserialize,
        allOffsets,
        ClassFeature(),
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SubclassDataQueryFilter
    on QueryBuilder<SubclassData, SubclassData, QFilterCondition> {
  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'features',
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'features',
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'features',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SubclassDataQueryObject
    on QueryBuilder<SubclassData, SubclassData, QFilterCondition> {
  QueryBuilder<SubclassData, SubclassData, QAfterFilterCondition>
      featuresElement(FilterQuery<ClassFeature> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'features');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ClassSpecificFeatureSchema = Schema(
  name: r'ClassSpecificFeature',
  id: -2240263733840258116,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _classSpecificFeatureEstimateSize,
  serialize: _classSpecificFeatureSerialize,
  deserialize: _classSpecificFeatureDeserialize,
  deserializeProp: _classSpecificFeatureDeserializeProp,
);

int _classSpecificFeatureEstimateSize(
  ClassSpecificFeature object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _classSpecificFeatureSerialize(
  ClassSpecificFeature object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.name);
}

ClassSpecificFeature _classSpecificFeatureDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClassSpecificFeature();
  object.description = reader.readStringOrNull(offsets[0]);
  object.name = reader.readStringOrNull(offsets[1]);
  return object;
}

P _classSpecificFeatureDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ClassSpecificFeatureQueryFilter on QueryBuilder<ClassSpecificFeature,
    ClassSpecificFeature, QFilterCondition> {
  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
          QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
          QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassSpecificFeature, ClassSpecificFeature,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ClassSpecificFeatureQueryObject on QueryBuilder<ClassSpecificFeature,
    ClassSpecificFeature, QFilterCondition> {}
