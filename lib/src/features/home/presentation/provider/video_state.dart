import '../../domain/entities/video_entity.dart';

class VideoState {
  final List<VideoEntity> videos;
  final int currentPage;
  final bool isInitialLoading;
  final bool isNextPageLoading;
  final bool hasMore;

  VideoState({
    required this.videos,
    required this.currentPage,
    required this.isInitialLoading,
    required this.isNextPageLoading,
    required this.hasMore,
  });

  factory VideoState.initial() => VideoState(
    videos: [],
    currentPage: 1,
    isInitialLoading: true,
    isNextPageLoading: false,
    hasMore: true,
  );

  VideoState copyWith({
    List<VideoEntity>? videos,
    int? currentPage,
    bool? isInitialLoading,
    bool? isNextPageLoading,
    bool? hasMore,
  }) {
    return VideoState(
      videos: videos ?? this.videos,
      currentPage: currentPage ?? this.currentPage,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      isNextPageLoading: isNextPageLoading ?? this.isNextPageLoading,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}
