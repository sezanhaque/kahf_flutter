// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'ad13470fe866595ad0f58a3e26f11048d94ef22e';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$dioHash() => r'4668c52de1c456276f189bb78fe7e81d5168d741';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = Provider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = ProviderRef<Dio>;
String _$videoServicesHash() => r'7dcfa99eef15c476ade576d68dc92ecdc20b4fba';

/// See also [videoServices].
@ProviderFor(videoServices)
final videoServicesProvider = AutoDisposeProvider<VideoServices>.internal(
  videoServices,
  name: r'videoServicesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$videoServicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef VideoServicesRef = AutoDisposeProviderRef<VideoServices>;
String _$videoRepositoryImplHash() =>
    r'62cad77699a5a9f23e67edf991ce704d244362af';

/// See also [videoRepositoryImpl].
@ProviderFor(videoRepositoryImpl)
final videoRepositoryImplProvider =
    AutoDisposeProvider<VideoRepositoryImpl>.internal(
      videoRepositoryImpl,
      name: r'videoRepositoryImplProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$videoRepositoryImplHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef VideoRepositoryImplRef = AutoDisposeProviderRef<VideoRepositoryImpl>;
String _$getVideosUseCaseHash() => r'28b5390142e931eaad88560a053677c54168d582';

/// See also [getVideosUseCase].
@ProviderFor(getVideosUseCase)
final getVideosUseCaseProvider = AutoDisposeProvider<GetVideosUSeCase>.internal(
  getVideosUseCase,
  name: r'getVideosUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getVideosUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetVideosUseCaseRef = AutoDisposeProviderRef<GetVideosUSeCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
