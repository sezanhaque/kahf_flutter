import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/video/video_result_model.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    required int id,
    required String title,
    required String thumbnail,
    required String channelName,
    required String channelImage,
    required int viewCount,
    required DateTime publishedAt,
    required Duration duration,
    required String description,
    required bool isVerified,
    required String channelSlug,
    required List<Mp4Url> qualities,
  }) = _VideoEntity;
}
