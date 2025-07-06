import 'package:kahf_flutter/src/core/base/failure.dart';
import 'package:kahf_flutter/src/core/base/response_result.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/paginated_video_response.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_model.dart';
import 'package:kahf_flutter/src/features/home/data/services/video_services.dart';
import 'package:kahf_flutter/src/features/home/domain/entities/video_entity.dart';
import 'package:kahf_flutter/src/features/home/domain/repositories/video_repository.dart';

final class VideoRepositoryImpl extends VideoRepository {
  final VideoServices service;

  VideoRepositoryImpl({required this.service});

  @override
  Future<PaginatedVideoResponse> getVideos({int page = 1}) async {
    final response = await service.getVideos(page: page);

    return response;
  }

  // @override
  // Future<ResponseResult<List<VideoEntity>, Failure>> getHomeFeedVideos() async {
  //   return await asyncRequest(() async {
  //     final response = await service.getVideos();
  //     final VideoModel responseData = VideoModel.fromJson(response.data);
  //     List<VideoEntity> videoEntry = [];

  //     responseData.results.map((e) {
  //       videoEntry.add(e.toEntity());
  //     });

  //     return videoEntry;
  //   });
  // }
}
