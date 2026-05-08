// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_character_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeCharacterHash() => r'c76236ae46c18df05b8feb40785c81b574c7ccea';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ActiveCharacter
    extends BuildlessAutoDisposeAsyncNotifier<CharacterSheetState> {
  late final int characterId;

  FutureOr<CharacterSheetState> build(
    int characterId,
  );
}

/// The Riverpod Notifier that controls the character state.
/// We pass [characterId] into the build method to allow managing multiple characters.
///
/// Copied from [ActiveCharacter].
@ProviderFor(ActiveCharacter)
const activeCharacterProvider = ActiveCharacterFamily();

/// The Riverpod Notifier that controls the character state.
/// We pass [characterId] into the build method to allow managing multiple characters.
///
/// Copied from [ActiveCharacter].
class ActiveCharacterFamily extends Family<AsyncValue<CharacterSheetState>> {
  /// The Riverpod Notifier that controls the character state.
  /// We pass [characterId] into the build method to allow managing multiple characters.
  ///
  /// Copied from [ActiveCharacter].
  const ActiveCharacterFamily();

  /// The Riverpod Notifier that controls the character state.
  /// We pass [characterId] into the build method to allow managing multiple characters.
  ///
  /// Copied from [ActiveCharacter].
  ActiveCharacterProvider call(
    int characterId,
  ) {
    return ActiveCharacterProvider(
      characterId,
    );
  }

  @override
  ActiveCharacterProvider getProviderOverride(
    covariant ActiveCharacterProvider provider,
  ) {
    return call(
      provider.characterId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'activeCharacterProvider';
}

/// The Riverpod Notifier that controls the character state.
/// We pass [characterId] into the build method to allow managing multiple characters.
///
/// Copied from [ActiveCharacter].
class ActiveCharacterProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ActiveCharacter, CharacterSheetState> {
  /// The Riverpod Notifier that controls the character state.
  /// We pass [characterId] into the build method to allow managing multiple characters.
  ///
  /// Copied from [ActiveCharacter].
  ActiveCharacterProvider(
    int characterId,
  ) : this._internal(
          () => ActiveCharacter()..characterId = characterId,
          from: activeCharacterProvider,
          name: r'activeCharacterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeCharacterHash,
          dependencies: ActiveCharacterFamily._dependencies,
          allTransitiveDependencies:
              ActiveCharacterFamily._allTransitiveDependencies,
          characterId: characterId,
        );

  ActiveCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.characterId,
  }) : super.internal();

  final int characterId;

  @override
  FutureOr<CharacterSheetState> runNotifierBuild(
    covariant ActiveCharacter notifier,
  ) {
    return notifier.build(
      characterId,
    );
  }

  @override
  Override overrideWith(ActiveCharacter Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveCharacterProvider._internal(
        () => create()..characterId = characterId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        characterId: characterId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ActiveCharacter, CharacterSheetState>
      createElement() {
    return _ActiveCharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveCharacterProvider && other.characterId == characterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveCharacterRef
    on AutoDisposeAsyncNotifierProviderRef<CharacterSheetState> {
  /// The parameter `characterId` of this provider.
  int get characterId;
}

class _ActiveCharacterProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ActiveCharacter,
        CharacterSheetState> with ActiveCharacterRef {
  _ActiveCharacterProviderElement(super.provider);

  @override
  int get characterId => (origin as ActiveCharacterProvider).characterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
