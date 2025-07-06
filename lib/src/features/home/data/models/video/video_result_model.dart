import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_comment_model.dart';

import '../../../domain/entities/video_entity.dart';

part 'video_result_model.freezed.dart';
part 'video_result_model.g.dart';

@freezed
abstract class VideoResultModel with _$VideoResultModel {
  const factory VideoResultModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "thumbnail") required String thumbnail,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "date_and_time") DateTime? dateAndTime,
    @JsonKey(name: "slug") required String slug,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "manifest") String? manifest,
    @JsonKey(name: "live_status") int? liveStatus,
    @JsonKey(name: "live_manifest") dynamic liveManifest,
    @JsonKey(name: "is_live") bool? isLive,
    @JsonKey(name: "streaming_provider") StreamingProvider? streamingProvider,
    @JsonKey(name: "streaming_type") StreamingType? streamingType,
    @JsonKey(name: "mp4_urls") List<Mp4Url>? mp4Urls,
    @JsonKey(name: "channel_image") required String channelImage,
    @JsonKey(name: "channel_name") required String channelName,
    @JsonKey(name: "channel_username") required String channelUsername,
    @JsonKey(name: "is_verified") required bool isVerified,
    @JsonKey(name: "channel_slug") required String channelSlug,
    @JsonKey(name: "channel_subscriber") required String channelSubscriber,
    @JsonKey(name: "channel_id") required int channelId,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "viewers") String? viewers,
    @JsonKey(name: "duration") String? duration,
    @JsonKey(name: "object_type") required ObjectType objectType,
    @JsonKey(name: "all_time_hottest_score") double? allTimeHottestScore,
    @JsonKey(name: "average_hottest_score") double? averageHottestScore,
    @JsonKey(name: "like") int? like,
    @JsonKey(name: "mashallah") int? mashallah,
    @JsonKey(name: "comment_count") int? commentCount,
    @JsonKey(name: "score_type") ScoreType? scoreType,
    @JsonKey(name: "score") double? score,
    @JsonKey(name: "views_in_number") String? viewsInNumber,
    @JsonKey(name: "comments") List<VideoCommentModel>? comments,
    @JsonKey(name: "rank") int? rank,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "details") String? details,
    @JsonKey(name: "videos_count") int? videosCount,
  }) = _VideoResultModel;

  factory VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResultModelFromJson(json);
}

extension EntityMapper on VideoResultModel {
  VideoEntity toEntity() {
    return VideoEntity(
      id: id ?? Random.secure().nextInt(1000),
      title: title ?? name ?? "N/A",
      thumbnail: thumbnail,
      channelName: channelName,
      channelImage: channelImage,
      viewCount: int.tryParse(viewers ?? "0") ?? 0,
      publishedAt: createdAt!,
      duration: _parseDuration(duration!),
      description: description ?? details ?? "N/A",
      isVerified: isVerified,
      channelSlug: channelSlug,
      qualities: mp4Urls?.toList() ?? [],
    );
  }
}
Duration _parseDuration(String duration) {
  final parts = duration.split(':');
  if (parts.length == 2) {
    return Duration(minutes: int.parse(parts[0]), seconds: int.parse(parts[1]));
  } else if (parts.length == 3) {
    return Duration(
      hours: int.parse(parts[0]),
      minutes: int.parse(parts[1]),
      seconds: int.parse(parts[2]),
    );
  }
  return Duration.zero;
}

@freezed
abstract class Mp4Url with _$Mp4Url {
  const factory Mp4Url({
    @JsonKey(name: "quality") required Quality quality,
    @JsonKey(name: "video_url") required String videoUrl,
  }) = _Mp4Url;

  factory Mp4Url.fromJson(Map<String, dynamic> json) => _$Mp4UrlFromJson(json);
}

enum Quality {
  @JsonValue("240p")
  THE_240_P,
  @JsonValue("480p")
  THE_480_P,
  @JsonValue("720p")
  THE_720_P,
}

final qualityValues = EnumValues({
  "240p": Quality.THE_240_P,
  "480p": Quality.THE_480_P,
  "720p": Quality.THE_720_P,
});

enum ObjectType {
  @JsonValue("playlist")
  PLAYLIST,
  @JsonValue("video")
  VIDEO,
}

final objectTypeValues = EnumValues({
  "playlist": ObjectType.PLAYLIST,
  "video": ObjectType.VIDEO,
});

enum ScoreType {
  @JsonValue("latest_hottest")
  LATEST_HOTTEST,
}

final scoreTypeValues = EnumValues({
  "latest_hottest": ScoreType.LATEST_HOTTEST,
});

enum StreamingProvider {
  @JsonValue("bunny")
  BUNNY,
}

final streamingProviderValues = EnumValues({"bunny": StreamingProvider.BUNNY});


enum StreamingType {
  @JsonValue("mp4")
  MP4,
}

final streamingTypeValues = EnumValues({"mp4": StreamingType.MP4});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
