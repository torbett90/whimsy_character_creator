// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_character_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterSheetState {
  ActiveCharacterSave get save => throw _privateConstructorUsedError;
  DndClass? get characterClass => throw _privateConstructorUsedError;
  Species? get species => throw _privateConstructorUsedError;
  Background? get background => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterSheetStateCopyWith<CharacterSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterSheetStateCopyWith<$Res> {
  factory $CharacterSheetStateCopyWith(
          CharacterSheetState value, $Res Function(CharacterSheetState) then) =
      _$CharacterSheetStateCopyWithImpl<$Res, CharacterSheetState>;
  @useResult
  $Res call(
      {ActiveCharacterSave save,
      DndClass? characterClass,
      Species? species,
      Background? background});
}

/// @nodoc
class _$CharacterSheetStateCopyWithImpl<$Res, $Val extends CharacterSheetState>
    implements $CharacterSheetStateCopyWith<$Res> {
  _$CharacterSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? save = null,
    Object? characterClass = freezed,
    Object? species = freezed,
    Object? background = freezed,
  }) {
    return _then(_value.copyWith(
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as ActiveCharacterSave,
      characterClass: freezed == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as DndClass?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Background?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterSheetStateImplCopyWith<$Res>
    implements $CharacterSheetStateCopyWith<$Res> {
  factory _$$CharacterSheetStateImplCopyWith(_$CharacterSheetStateImpl value,
          $Res Function(_$CharacterSheetStateImpl) then) =
      __$$CharacterSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActiveCharacterSave save,
      DndClass? characterClass,
      Species? species,
      Background? background});
}

/// @nodoc
class __$$CharacterSheetStateImplCopyWithImpl<$Res>
    extends _$CharacterSheetStateCopyWithImpl<$Res, _$CharacterSheetStateImpl>
    implements _$$CharacterSheetStateImplCopyWith<$Res> {
  __$$CharacterSheetStateImplCopyWithImpl(_$CharacterSheetStateImpl _value,
      $Res Function(_$CharacterSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? save = null,
    Object? characterClass = freezed,
    Object? species = freezed,
    Object? background = freezed,
  }) {
    return _then(_$CharacterSheetStateImpl(
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as ActiveCharacterSave,
      characterClass: freezed == characterClass
          ? _value.characterClass
          : characterClass // ignore: cast_nullable_to_non_nullable
              as DndClass?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Background?,
    ));
  }
}

/// @nodoc

class _$CharacterSheetStateImpl implements _CharacterSheetState {
  const _$CharacterSheetStateImpl(
      {required this.save, this.characterClass, this.species, this.background});

  @override
  final ActiveCharacterSave save;
  @override
  final DndClass? characterClass;
  @override
  final Species? species;
  @override
  final Background? background;

  @override
  String toString() {
    return 'CharacterSheetState(save: $save, characterClass: $characterClass, species: $species, background: $background)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterSheetStateImpl &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.characterClass, characterClass) ||
                other.characterClass == characterClass) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, save, characterClass, species, background);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterSheetStateImplCopyWith<_$CharacterSheetStateImpl> get copyWith =>
      __$$CharacterSheetStateImplCopyWithImpl<_$CharacterSheetStateImpl>(
          this, _$identity);
}

abstract class _CharacterSheetState implements CharacterSheetState {
  const factory _CharacterSheetState(
      {required final ActiveCharacterSave save,
      final DndClass? characterClass,
      final Species? species,
      final Background? background}) = _$CharacterSheetStateImpl;

  @override
  ActiveCharacterSave get save;
  @override
  DndClass? get characterClass;
  @override
  Species? get species;
  @override
  Background? get background;
  @override
  @JsonKey(ignore: true)
  _$$CharacterSheetStateImplCopyWith<_$CharacterSheetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
