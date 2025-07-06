import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/endpoints.dart';
part 'video_services.g.dart';

@RestApi()
abstract class VideoServices {
  factory VideoServices(Dio dio) = _VideoServices;

  @GET(Endpoints.homeFeedVideos)
  Future<HttpResponse> getVideos({
    @Query("format") String format = "json",
    @Query("page") int page = 1,
    @Query("page_size") int pageSize = 15,
  });
}
