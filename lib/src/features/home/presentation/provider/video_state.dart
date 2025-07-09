import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/video_entity.dart';

part 'video_state.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = VideoStateInitial;
  const factory VideoState.loading() = VideoStateLoading;
  const factory VideoState.success({
    required List<VideoEntity> videos,
    required int currentPage,
    required int totalVideos,
    required bool hasMore,
    @Default(false) bool isLoadingMore,
  }) = VideoStateSuccess;
  const factory VideoState.error(String message) = VideoStateError;
}