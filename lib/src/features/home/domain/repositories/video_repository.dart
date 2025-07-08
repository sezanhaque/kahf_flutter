import 'package:kahf_flutter/src/core/base/base_repository.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/paginated_video_response.dart';

abstract base class VideoRepository extends BaseRepository {
  Future<PaginatedVideoResponse> getVideos({int page});
}
