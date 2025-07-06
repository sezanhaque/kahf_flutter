part of '../dependency_injection.dart';

@riverpod
VideoRepositoryImpl videoRepositoryImpl(Ref ref) {
  return VideoRepositoryImpl(service: ref.read(videoServicesProvider));
}