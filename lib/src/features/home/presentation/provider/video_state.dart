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
// class VideoState {
//   final List<VideoEntity> videos;
//   final int currentPage;
//   final bool isInitialLoading;
//   final bool isNextPageLoading;
//   final bool hasMore;

//   VideoState({
//     required this.videos,
//     required this.currentPage,
//     required this.isInitialLoading,
//     required this.isNextPageLoading,
//     required this.hasMore,
//   });

//   factory VideoState.initial() => VideoState(
//     videos: [],
//     currentPage: 1,
//     isInitialLoading: true,
//     isNextPageLoading: false,
//     hasMore: true,
//   );

//   VideoState copyWith({
//     List<VideoEntity>? videos,
//     int? currentPage,
//     bool? isInitialLoading,
//     bool? isNextPageLoading,
//     bool? hasMore,
//   }) {
//     return VideoState(
//       videos: videos ?? this.videos,
//       currentPage: currentPage ?? this.currentPage,
//       isInitialLoading: isInitialLoading ?? this.isInitialLoading,
//       isNextPageLoading: isNextPageLoading ?? this.isNextPageLoading,
//       hasMore: hasMore ?? this.hasMore,
//     );
//   }
// }
