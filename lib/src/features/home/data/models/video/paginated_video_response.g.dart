// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedVideoResponse _$PaginatedVideoResponseFromJson(
  Map<String, dynamic> json,
) => _PaginatedVideoResponse(
  links: Links.fromJson(json['links'] as Map<String, dynamic>),
  total: (json['total'] as num).toInt(),
  popularVideoCount: (json['popular_video_count'] as num).toInt(),
  cacheEndDate: DateTime.parse(json['cache_end_date'] as String),
  isCachedResponse: json['is_cached_response'] as bool,
  page: (json['page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaginatedVideoResponseToJson(
  _PaginatedVideoResponse instance,
) => <String, dynamic>{
  'links': instance.links,
  'total': instance.total,
  'popular_video_count': instance.popularVideoCount,
  'cache_end_date': instance.cacheEndDate.toIso8601String(),
  'is_cached_response': instance.isCachedResponse,
  'page': instance.page,
  'page_size': instance.pageSize,
  'results': instance.results,
};

_Links _$LinksFromJson(Map<String, dynamic> json) =>
    _Links(next: (json['next'] as num).toInt());

Map<String, dynamic> _$LinksToJson(_Links instance) => <String, dynamic>{
  'next': instance.next,
};
