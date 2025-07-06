part of '../dependency_injection.dart';

@riverpod
VideoServices videoServices(Ref ref) {
  return VideoServices(ref.read(dioProvider));
}
