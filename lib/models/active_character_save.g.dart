// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_character_save.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetActiveCharacterSaveCollection on Isar {
  IsarCollection<ActiveCharacterSave> get activeCharacterSaves =>
      this.collection();
}

const ActiveCharacterSaveSchema = CollectionSchema(
  name: r'ActiveCharacterSave',
  id: -5247974399890887212,
  properties: {
    r'backgroundName': PropertySchema(
      id: 0,
      name: r'backgroundName',
      type: IsarType.string,
    ),
    r'characterName': PropertySchema(
      id: 1,
      name: r'characterName',
      type: IsarType.string,
    ),
    r'className': PropertySchema(
      id: 2,
      name: r'className',
      type: IsarType.string,
    ),
    r'currentHp': PropertySchema(
      id: 3,
      name: r'currentHp',
      type: IsarType.long,
    ),
    r'inventory': PropertySchema(
      id: 4,
      name: r'inventory',
      type: IsarType.stringList,
    ),
    r'level': PropertySchema(
      id: 5,
      name: r'level',
      type: IsarType.long,
    ),
    r'selectedFeatures': PropertySchema(
      id: 6,
      name: r'selectedFeatures',
      type: IsarType.stringList,
    ),
    r'selectedSpells': PropertySchema(
      id: 7,
      name: r'selectedSpells',
      type: IsarType.stringList,
    ),
    r'speciesName': PropertySchema(
      id: 8,
      name: r'speciesName',
      type: IsarType.string,
    ),
    r'subclass': PropertySchema(
      id: 9,
      name: r'subclass',
      type: IsarType.string,
    ),
    r'temporaryHp': PropertySchema(
      id: 10,
      name: r'temporaryHp',
      type: IsarType.long,
    )
  },
  estimateSize: _activeCharacterSaveEstimateSize,
  serialize: _activeCharacterSaveSerialize,
  deserialize: _activeCharacterSaveDeserialize,
  deserializeProp: _activeCharacterSaveDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _activeCharacterSaveGetId,
  getLinks: _activeCharacterSaveGetLinks,
  attach: _activeCharacterSaveAttach,
  version: '3.1.0+1',
);

int _activeCharacterSaveEstimateSize(
  ActiveCharacterSave object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.backgroundName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.characterName.length * 3;
  {
    final value = object.className;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.inventory.length * 3;
  {
    for (var i = 0; i < object.inventory.length; i++) {
      final value = object.inventory[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.selectedFeatures.length * 3;
  {
    for (var i = 0; i < object.selectedFeatures.length; i++) {
      final value = object.selectedFeatures[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.selectedSpells.length * 3;
  {
    for (var i = 0; i < object.selectedSpells.length; i++) {
      final value = object.selectedSpells[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.speciesName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subclass;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _activeCharacterSaveSerialize(
  ActiveCharacterSave object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backgroundName);
  writer.writeString(offsets[1], object.characterName);
  writer.writeString(offsets[2], object.className);
  writer.writeLong(offsets[3], object.currentHp);
  writer.writeStringList(offsets[4], object.inventory);
  writer.writeLong(offsets[5], object.level);
  writer.writeStringList(offsets[6], object.selectedFeatures);
  writer.writeStringList(offsets[7], object.selectedSpells);
  writer.writeString(offsets[8], object.speciesName);
  writer.writeString(offsets[9], object.subclass);
  writer.writeLong(offsets[10], object.temporaryHp);
}

ActiveCharacterSave _activeCharacterSaveDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ActiveCharacterSave();
  object.backgroundName = reader.readStringOrNull(offsets[0]);
  object.characterName = reader.readString(offsets[1]);
  object.className = reader.readStringOrNull(offsets[2]);
  object.currentHp = reader.readLong(offsets[3]);
  object.id = id;
  object.inventory = reader.readStringList(offsets[4]) ?? [];
  object.level = reader.readLong(offsets[5]);
  object.selectedFeatures = reader.readStringList(offsets[6]) ?? [];
  object.selectedSpells = reader.readStringList(offsets[7]) ?? [];
  object.speciesName = reader.readStringOrNull(offsets[8]);
  object.subclass = reader.readStringOrNull(offsets[9]);
  object.temporaryHp = reader.readLong(offsets[10]);
  return object;
}

P _activeCharacterSaveDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _activeCharacterSaveGetId(ActiveCharacterSave object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _activeCharacterSaveGetLinks(
    ActiveCharacterSave object) {
  return [];
}

void _activeCharacterSaveAttach(
    IsarCollection<dynamic> col, Id id, ActiveCharacterSave object) {
  object.id = id;
}

extension ActiveCharacterSaveQueryWhereSort
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QWhere> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ActiveCharacterSaveQueryWhere
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QWhereClause> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterWhereClause>
      idBetween(
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
}

extension ActiveCharacterSaveQueryFilter on QueryBuilder<ActiveCharacterSave,
    ActiveCharacterSave, QFilterCondition> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backgroundName',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backgroundName',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroundName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroundName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroundName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      backgroundNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroundName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'characterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'characterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'characterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      characterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'characterName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'className',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'className',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'className',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'className',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'className',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'className',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      classNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'className',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      currentHpEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      currentHpGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      currentHpLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      currentHpBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentHp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inventory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inventory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inventory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inventory',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inventory',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      inventoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'inventory',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      levelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      levelGreaterThan(
    int value, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      levelLessThan(
    int value, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      levelBetween(
    int lower,
    int upper, {
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

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedFeatures',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedFeatures',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedFeatures',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedFeatures',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedFeatures',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedFeaturesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedFeatures',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedSpells',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedSpells',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedSpells',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedSpells',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedSpells',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      selectedSpellsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedSpells',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'speciesName',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'speciesName',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speciesName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speciesName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      speciesNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speciesName',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subclass',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subclass',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subclass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subclass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subclass',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subclass',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      subclassIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subclass',
        value: '',
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      temporaryHpEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temporaryHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      temporaryHpGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temporaryHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      temporaryHpLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temporaryHp',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterFilterCondition>
      temporaryHpBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temporaryHp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ActiveCharacterSaveQueryObject on QueryBuilder<ActiveCharacterSave,
    ActiveCharacterSave, QFilterCondition> {}

extension ActiveCharacterSaveQueryLinks on QueryBuilder<ActiveCharacterSave,
    ActiveCharacterSave, QFilterCondition> {}

extension ActiveCharacterSaveQuerySortBy
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QSortBy> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByBackgroundName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByBackgroundNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByClassName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByClassNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByCurrentHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHp', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByCurrentHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHp', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortBySpeciesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortBySpeciesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortBySubclass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subclass', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortBySubclassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subclass', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByTemporaryHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temporaryHp', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      sortByTemporaryHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temporaryHp', Sort.desc);
    });
  }
}

extension ActiveCharacterSaveQuerySortThenBy
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QSortThenBy> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByBackgroundName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByBackgroundNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByCharacterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByCharacterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'characterName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByClassName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByClassNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'className', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByCurrentHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHp', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByCurrentHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHp', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenBySpeciesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenBySpeciesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenBySubclass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subclass', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenBySubclassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subclass', Sort.desc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByTemporaryHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temporaryHp', Sort.asc);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QAfterSortBy>
      thenByTemporaryHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temporaryHp', Sort.desc);
    });
  }
}

extension ActiveCharacterSaveQueryWhereDistinct
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct> {
  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByBackgroundName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroundName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByCharacterName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'characterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByClassName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'className', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByCurrentHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentHp');
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByInventory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inventory');
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level');
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctBySelectedFeatures() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedFeatures');
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctBySelectedSpells() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedSpells');
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctBySpeciesName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speciesName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctBySubclass({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subclass', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QDistinct>
      distinctByTemporaryHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temporaryHp');
    });
  }
}

extension ActiveCharacterSaveQueryProperty
    on QueryBuilder<ActiveCharacterSave, ActiveCharacterSave, QQueryProperty> {
  QueryBuilder<ActiveCharacterSave, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ActiveCharacterSave, String?, QQueryOperations>
      backgroundNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroundName');
    });
  }

  QueryBuilder<ActiveCharacterSave, String, QQueryOperations>
      characterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'characterName');
    });
  }

  QueryBuilder<ActiveCharacterSave, String?, QQueryOperations>
      classNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'className');
    });
  }

  QueryBuilder<ActiveCharacterSave, int, QQueryOperations> currentHpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentHp');
    });
  }

  QueryBuilder<ActiveCharacterSave, List<String>, QQueryOperations>
      inventoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inventory');
    });
  }

  QueryBuilder<ActiveCharacterSave, int, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<ActiveCharacterSave, List<String>, QQueryOperations>
      selectedFeaturesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedFeatures');
    });
  }

  QueryBuilder<ActiveCharacterSave, List<String>, QQueryOperations>
      selectedSpellsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedSpells');
    });
  }

  QueryBuilder<ActiveCharacterSave, String?, QQueryOperations>
      speciesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speciesName');
    });
  }

  QueryBuilder<ActiveCharacterSave, String?, QQueryOperations>
      subclassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subclass');
    });
  }

  QueryBuilder<ActiveCharacterSave, int, QQueryOperations>
      temporaryHpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temporaryHp');
    });
  }
}
