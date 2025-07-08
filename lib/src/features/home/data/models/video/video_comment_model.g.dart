// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoCommentModel _$VideoCommentModelFromJson(Map<String, dynamic> json) =>
    _VideoCommentModel(
      comment: json['comment'] as String,
      id: (json['id'] as num).toInt(),
      like: (json['like'] as num).toInt(),
      dislike: (json['dislike'] as num).toInt(),
      userInformation: (json['user_information'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      userImage: json['user_image'],
      userName: json['user_name'] as String?,
      repliesCount: (json['replies_count'] as num).toInt(),
      isLike: json['is_like'] as bool,
      isDislike: json['is_dislike'] as bool,
      isVerified: json['is_verified'] as bool,
    );

Map<String, dynamic> _$VideoCommentModelToJson(_VideoCommentModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'id': instance.id,
      'like': instance.like,
      'dislike': instance.dislike,
      'user_information': instance.userInformation,
      'created_at': instance.createdAt.toIso8601String(),
      'user_image': instance.userImage,
      'user_name': instance.userName,
      'replies_count': instance.repliesCount,
      'is_like': instance.isLike,
      'is_dislike': instance.isDislike,
      'is_verified': instance.isVerified,
    };
