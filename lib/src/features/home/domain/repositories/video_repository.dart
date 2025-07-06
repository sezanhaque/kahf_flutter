import 'package:kahf_flutter/src/core/base/base_repository.dart';
import 'package:kahf_flutter/src/core/base/failure.dart';
import 'package:kahf_flutter/src/core/base/response_result.dart';
import 'package:kahf_flutter/src/features/home/domain/entities/video_entity.dart';

abstract base class VideoRepository extends BaseRepository {
  Future<ResponseResult<List<VideoEntity>, Failure>>
  getHomeFeedVideos();
}
