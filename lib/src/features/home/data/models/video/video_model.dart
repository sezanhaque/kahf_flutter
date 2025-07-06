import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_result_model.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    @JsonKey(name: "links") required Links links,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "popular_video_count") required int popularVideoCount,
    @JsonKey(name: "cache_end_date") required DateTime cacheEndDate,
    @JsonKey(name: "is_cached_response") required bool isCachedResponse,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "page_size") required int pageSize,
    @JsonKey(name: "results") required List<VideoResultModel> results,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({@JsonKey(name: "next") required int next}) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
