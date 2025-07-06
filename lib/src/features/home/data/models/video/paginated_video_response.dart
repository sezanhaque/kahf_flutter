import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_model.dart';

part 'paginated_video_response.freezed.dart';
part 'paginated_video_response.g.dart';

@freezed
abstract class PaginatedVideoResponse with _$PaginatedVideoResponse {
  const factory PaginatedVideoResponse({
    @JsonKey(name: "links") required Links links,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "popular_video_count") required int popularVideoCount,
    @JsonKey(name: "cache_end_date") required DateTime cacheEndDate,
    @JsonKey(name: "is_cached_response") required bool isCachedResponse,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "results") required List<VideoModel> results,
  }) = _PaginatedVideoResponse;

  factory PaginatedVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedVideoResponseFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({@JsonKey(name: "next") required int next}) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
