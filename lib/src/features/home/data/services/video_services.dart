import 'package:dio/dio.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/paginated_video_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/endpoints.dart';
part 'video_services.g.dart';

@RestApi()
abstract class VideoServices {
  factory VideoServices(Dio dio) = _VideoServices;

  @GET(Endpoints.homeFeedVideos)
  Future<PaginatedVideoResponse> getVideos({
    @Query("format") String format = "json",
    @Query("page") int page = 1,
    @Query("page_size") int pageSize = 15,
  });
}
