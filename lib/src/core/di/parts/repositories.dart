part of '../dependency_injection.dart';

@Riverpod(keepAlive: true)
VideoRepository videoRepository(Ref ref) {
  return VideoRepositoryImpl(service: ref.read(videoServicesProvider));
}