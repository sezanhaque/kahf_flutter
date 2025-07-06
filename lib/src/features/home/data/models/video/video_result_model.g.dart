// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoResultModel _$VideoResultModelFromJson(Map<String, dynamic> json) =>
    _VideoResultModel(
      id: (json['id'] as num?)?.toInt(),
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
      slug: json['slug'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      manifest: json['manifest'] as String?,
      liveStatus: (json['live_status'] as num?)?.toInt(),
      liveManifest: json['live_manifest'],
      isLive: json['is_live'] as bool?,
      streamingProvider: $enumDecodeNullable(
        _$StreamingProviderEnumMap,
        json['streaming_provider'],
      ),
      streamingType: $enumDecodeNullable(
        _$StreamingTypeEnumMap,
        json['streaming_type'],
      ),
      mp4Urls: (json['mp4_urls'] as List<dynamic>?)
          ?.map((e) => Mp4Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      channelImage: json['channel_image'] as String,
      channelName: json['channel_name'] as String,
      channelUsername: json['channel_username'] as String,
      isVerified: json['is_verified'] as bool,
      channelSlug: json['channel_slug'] as String,
      channelSubscriber: json['channel_subscriber'] as String,
      channelId: (json['channel_id'] as num).toInt(),
      type: json['type'] as String?,
      viewers: json['viewers'] as String?,
      duration: json['duration'] as String?,
      objectType: $enumDecode(_$ObjectTypeEnumMap, json['object_type']),
      allTimeHottestScore: (json['all_time_hottest_score'] as num?)?.toDouble(),
      averageHottestScore: (json['average_hottest_score'] as num?)?.toDouble(),
      like: (json['like'] as num?)?.toInt(),
      mashallah: (json['mashallah'] as num?)?.toInt(),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      scoreType: $enumDecodeNullable(_$ScoreTypeEnumMap, json['score_type']),
      score: (json['score'] as num?)?.toDouble(),
      viewsInNumber: json['views_in_number'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => VideoCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rank: (json['rank'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
      videosCount: (json['videos_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VideoResultModelToJson(
  _VideoResultModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'thumbnail': instance.thumbnail,
  'title': instance.title,
  'description': instance.description,
  'date_and_time': instance.dateAndTime?.toIso8601String(),
  'slug': instance.slug,
  'created_at': instance.createdAt?.toIso8601String(),
  'manifest': instance.manifest,
  'live_status': instance.liveStatus,
  'live_manifest': instance.liveManifest,
  'is_live': instance.isLive,
  'streaming_provider': _$StreamingProviderEnumMap[instance.streamingProvider],
  'streaming_type': _$StreamingTypeEnumMap[instance.streamingType],
  'mp4_urls': instance.mp4Urls,
  'channel_image': instance.channelImage,
  'channel_name': instance.channelName,
  'channel_username': instance.channelUsername,
  'is_verified': instance.isVerified,
  'channel_slug': instance.channelSlug,
  'channel_subscriber': instance.channelSubscriber,
  'channel_id': instance.channelId,
  'type': instance.type,
  'viewers': instance.viewers,
  'duration': instance.duration,
  'object_type': _$ObjectTypeEnumMap[instance.objectType]!,
  'all_time_hottest_score': instance.allTimeHottestScore,
  'average_hottest_score': instance.averageHottestScore,
  'like': instance.like,
  'mashallah': instance.mashallah,
  'comment_count': instance.commentCount,
  'score_type': _$ScoreTypeEnumMap[instance.scoreType],
  'score': instance.score,
  'views_in_number': instance.viewsInNumber,
  'comments': instance.comments,
  'rank': instance.rank,
  'name': instance.name,
  'details': instance.details,
  'videos_count': instance.videosCount,
};

const _$StreamingProviderEnumMap = {StreamingProvider.BUNNY: 'bunny'};

const _$StreamingTypeEnumMap = {StreamingType.MP4: 'mp4'};

const _$ObjectTypeEnumMap = {
  ObjectType.PLAYLIST: 'playlist',
  ObjectType.VIDEO: 'video',
};

const _$ScoreTypeEnumMap = {ScoreType.LATEST_HOTTEST: 'latest_hottest'};

_Mp4Url _$Mp4UrlFromJson(Map<String, dynamic> json) => _Mp4Url(
  quality: $enumDecode(_$QualityEnumMap, json['quality']),
  videoUrl: json['video_url'] as String,
);

Map<String, dynamic> _$Mp4UrlToJson(_Mp4Url instance) => <String, dynamic>{
  'quality': _$QualityEnumMap[instance.quality]!,
  'video_url': instance.videoUrl,
};

const _$QualityEnumMap = {
  Quality.THE_240_P: '240p',
  Quality.THE_480_P: '480p',
  Quality.THE_720_P: '720p',
};
