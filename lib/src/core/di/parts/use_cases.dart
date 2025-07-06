part of '../dependency_injection.dart';

@riverpod
GetVideosUSeCase getVideosUseCase(Ref ref) {
  return GetVideosUSeCase(repository: ref.read(videoRepositoryImplProvider));
}