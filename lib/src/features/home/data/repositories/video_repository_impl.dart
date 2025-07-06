import 'package:kahf_flutter/src/features/home/data/models/video/paginated_video_response.dart';
import 'package:kahf_flutter/src/features/home/data/services/video_services.dart';
import 'package:kahf_flutter/src/features/home/domain/repositories/video_repository.dart';

final class VideoRepositoryImpl extends VideoRepository {
  final VideoServices service;

  VideoRepositoryImpl({required this.service});

  @override
  Future<PaginatedVideoResponse> getVideos({int page = 1}) async {
    final response = await service.getVideos(page: page);

    return response;
  }
}
