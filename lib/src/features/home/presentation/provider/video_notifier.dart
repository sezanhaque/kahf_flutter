import 'package:kahf_flutter/src/core/di/dependency_injection.dart';
import 'package:kahf_flutter/src/core/exceptions/app_exceptions.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/paginated_video_response.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_model.dart';
import 'package:kahf_flutter/src/features/home/presentation/provider/video_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/error_notifier.dart';
import '../../domain/entities/video_entity.dart';

part 'video_notifier.g.dart';

@riverpod
class VideoNotifier extends _$VideoNotifier {
  @override
  VideoState build() {
    return const VideoState.initial();
  }

  Future<void> fetchVideos({bool refresh = false}) async {
    try {
      final repository = ref.read(videoRepositoryProvider);

      if (!refresh && state is VideoStateSuccess) {
        final successState = state as VideoStateSuccess;
        if (successState.isLoadingMore) return;
        state = successState.copyWith(isLoadingMore: true);
      } else {
        state = const VideoState.loading();
      }

      // Get next page
      final nextPage = refresh
          ? 1
          : (state is VideoStateSuccess
                ? (state as VideoStateSuccess).currentPage + 1
                : 1);

      // Fetch videos
      final PaginatedVideoResponse response = await repository.getVideos(
        page: nextPage,
      );

      // Update state
      final List<VideoEntity> currentVideos = state is VideoStateSuccess
          ? (state as VideoStateSuccess).videos
          : <VideoEntity>[];

      final List<VideoEntity> newVideoEntry = response.results
          .map((e) => e.toEntity())
          .toList();

      final List<VideoEntity> newVideos = refresh
          ? newVideoEntry
          : [...currentVideos, ...newVideoEntry];

      state = VideoState.success(
        videos: newVideos,
        currentPage: response.page,
        totalVideos: response.total,
        hasMore: newVideos.length < response.total,
      );
    } on AppException catch (e) {
      _handleError(e, e.message);
    } catch (e) {
      _handleError(e, 'An unexpected error occurred');
    }
  }

  Future<void> refreshVideos() async => fetchVideos(refresh: true);

  void _handleError(dynamic error, String message) {
    if (state is! VideoStateSuccess ||
        (state as VideoStateSuccess).videos.isEmpty) {
      state = VideoState.error(message);
    }
    ref.read(errorNotifierProvider.notifier).setError(message);
  }
}
