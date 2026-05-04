// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBackgroundCollection on Isar {
  IsarCollection<Background> get backgrounds => this.collection();
}

const BackgroundSchema = CollectionSchema(
  name: r'Background',
  id: -5432158777051388817,
  properties: {
    r'asiOptions': PropertySchema(
      id: 0,
      name: r'asiOptions',
      type: IsarType.stringList,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'name': PropertySchema(id: 2, name: r'name', type: IsarType.string),
    r'originFeat': PropertySchema(
      id: 3,
      name: r'originFeat',
      type: IsarType.string,
    ),
    r'skillProficiencies': PropertySchema(
      id: 4,
      name: r'skillProficiencies',
      type: IsarType.stringList,
    ),
    r'startingEquipment': PropertySchema(
      id: 5,
      name: r'startingEquipment',
      type: IsarType.stringList,
    ),
    r'toolProficiencies': PropertySchema(
      id: 6,
      name: r'toolProficiencies',
      type: IsarType.stringList,
    ),
  },
  estimateSize: _backgroundEstimateSize,
  serialize: _backgroundSerialize,
  deserialize: _backgroundDeserialize,
  deserializeProp: _backgroundDeserializeProp,
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
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},
  getId: _backgroundGetId,
  getLinks: _backgroundGetLinks,
  attach: _backgroundAttach,
  version: '3.1.0+1',
);

int _backgroundEstimateSize(
  Background object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.asiOptions.length * 3;
  {
    for (var i = 0; i < object.asiOptions.length; i++) {
      final value = object.asiOptions[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.originFeat.length * 3;
  bytesCount += 3 + object.skillProficiencies.length * 3;
  {
    for (var i = 0; i < object.skillProficiencies.length; i++) {
      final value = object.skillProficiencies[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.startingEquipment.length * 3;
  {
    for (var i = 0; i < object.startingEquipment.length; i++) {
      final value = object.startingEquipment[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.toolProficiencies.length * 3;
  {
    for (var i = 0; i < object.toolProficiencies.length; i++) {
      final value = object.toolProficiencies[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _backgroundSerialize(
  Background object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.asiOptions);
  writer.writeString(offsets[1], object.description);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.originFeat);
  writer.writeStringList(offsets[4], object.skillProficiencies);
  writer.writeStringList(offsets[5], object.startingEquipment);
  writer.writeStringList(offsets[6], object.toolProficiencies);
}

Background _backgroundDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Background();
  object.asiOptions = reader.readStringList(offsets[0]) ?? [];
  object.description = reader.readString(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  object.originFeat = reader.readString(offsets[3]);
  object.skillProficiencies = reader.readStringList(offsets[4]) ?? [];
  object.startingEquipment = reader.readStringList(offsets[5]) ?? [];
  object.toolProficiencies = reader.readStringList(offsets[6]) ?? [];
  return object;
}

P _backgroundDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _backgroundGetId(Background object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _backgroundGetLinks(Background object) {
  return [];
}

void _backgroundAttach(IsarCollection<dynamic> col, Id id, Background object) {
  object.id = id;
}

extension BackgroundByIndex on IsarCollection<Background> {
  Future<Background?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  Background? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<Background?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<Background?> getAllByNameSync(List<String> nameValues) {
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

  Future<Id> putByName(Background object) {
    return putByIndex(r'name', object);
  }

  Id putByNameSync(Background object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByName(List<Background> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<Id> putAllByNameSync(List<Background> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension BackgroundQueryWhereSort
    on QueryBuilder<Background, Background, QWhere> {
  QueryBuilder<Background, Background, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BackgroundQueryWhere
    on QueryBuilder<Background, Background, QWhereClause> {
  QueryBuilder<Background, Background, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<Background, Background, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Background, Background, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterWhereClause> nameEqualTo(
    String name,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'name', value: [name]),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterWhereClause> nameNotEqualTo(
    String name,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [],
                upper: [name],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [name],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [name],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'name',
                lower: [],
                upper: [name],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension BackgroundQueryFilter
    on QueryBuilder<Background, Background, QFilterCondition> {
  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'asiOptions',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'asiOptions',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'asiOptions',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'asiOptions', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'asiOptions', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'asiOptions', length, true, length, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'asiOptions', 0, true, 0, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'asiOptions', 0, false, 999999, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'asiOptions', 0, true, length, include);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'asiOptions', length, include, 999999, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  asiOptionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'asiOptions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'description',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'description',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'id'),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'id'),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idEqualTo(
    Id? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> originFeatEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> originFeatBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'originFeat',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'originFeat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition> originFeatMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'originFeat',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'originFeat', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  originFeatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'originFeat', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'skillProficiencies',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'skillProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'skillProficiencies',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'skillProficiencies', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'skillProficiencies', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skillProficiencies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'skillProficiencies', 0, true, 0, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'skillProficiencies', 0, false, 999999, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'skillProficiencies', 0, true, length, include);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skillProficiencies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  skillProficienciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skillProficiencies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'startingEquipment',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'startingEquipment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'startingEquipment',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'startingEquipment', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'startingEquipment', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'startingEquipment', length, true, length, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'startingEquipment', 0, true, 0, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'startingEquipment', 0, false, 999999, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'startingEquipment', 0, true, length, include);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'startingEquipment',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  startingEquipmentLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'startingEquipment',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'toolProficiencies',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'toolProficiencies',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'toolProficiencies',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'toolProficiencies', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'toolProficiencies', value: ''),
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'toolProficiencies', length, true, length, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'toolProficiencies', 0, true, 0, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'toolProficiencies', 0, false, 999999, true);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'toolProficiencies', 0, true, length, include);
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'toolProficiencies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Background, Background, QAfterFilterCondition>
  toolProficienciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'toolProficiencies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension BackgroundQueryObject
    on QueryBuilder<Background, Background, QFilterCondition> {}

extension BackgroundQueryLinks
    on QueryBuilder<Background, Background, QFilterCondition> {}

extension BackgroundQuerySortBy
    on QueryBuilder<Background, Background, QSortBy> {
  QueryBuilder<Background, Background, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> sortByOriginFeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originFeat', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> sortByOriginFeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originFeat', Sort.desc);
    });
  }
}

extension BackgroundQuerySortThenBy
    on QueryBuilder<Background, Background, QSortThenBy> {
  QueryBuilder<Background, Background, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByOriginFeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originFeat', Sort.asc);
    });
  }

  QueryBuilder<Background, Background, QAfterSortBy> thenByOriginFeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originFeat', Sort.desc);
    });
  }
}

extension BackgroundQueryWhereDistinct
    on QueryBuilder<Background, Background, QDistinct> {
  QueryBuilder<Background, Background, QDistinct> distinctByAsiOptions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'asiOptions');
    });
  }

  QueryBuilder<Background, Background, QDistinct> distinctByDescription({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Background, Background, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Background, Background, QDistinct> distinctByOriginFeat({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originFeat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Background, Background, QDistinct>
  distinctBySkillProficiencies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'skillProficiencies');
    });
  }

  QueryBuilder<Background, Background, QDistinct>
  distinctByStartingEquipment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startingEquipment');
    });
  }

  QueryBuilder<Background, Background, QDistinct>
  distinctByToolProficiencies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'toolProficiencies');
    });
  }
}

extension BackgroundQueryProperty
    on QueryBuilder<Background, Background, QQueryProperty> {
  QueryBuilder<Background, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Background, List<String>, QQueryOperations>
  asiOptionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'asiOptions');
    });
  }

  QueryBuilder<Background, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Background, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Background, String, QQueryOperations> originFeatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originFeat');
    });
  }

  QueryBuilder<Background, List<String>, QQueryOperations>
  skillProficienciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skillProficiencies');
    });
  }

  QueryBuilder<Background, List<String>, QQueryOperations>
  startingEquipmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startingEquipment');
    });
  }

  QueryBuilder<Background, List<String>, QQueryOperations>
  toolProficienciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'toolProficiencies');
    });
  }
}
