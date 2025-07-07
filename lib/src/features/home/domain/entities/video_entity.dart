import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kahf_flutter/src/features/home/data/models/video/video_comment_model.dart';

import '../../data/models/video/video_model.dart';

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
    String? manifest,
    List<Mp4Url>? qualities,
    required int mashallah,
    required int like,
    List<VideoCommentModel>? comments,
  }) = _VideoEntity;
}
