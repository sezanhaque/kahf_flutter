import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_comment_model.freezed.dart';
part 'video_comment_model.g.dart';

@freezed
abstract class VideoCommentModel with _$VideoCommentModel {
  const factory VideoCommentModel({
    @JsonKey(name: "comment") required String comment,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "like") required int like,
    @JsonKey(name: "dislike") required int dislike,
    @JsonKey(name: "user_information") required int userInformation,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "user_image") required dynamic userImage,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "replies_count") required int repliesCount,
    @JsonKey(name: "is_like") required bool isLike,
    @JsonKey(name: "is_dislike") required bool isDislike,
    @JsonKey(name: "is_verified") required bool isVerified,
  }) = _VideoCommentModel;

  factory VideoCommentModel.fromJson(Map<String, dynamic> json) =>
      _$VideoCommentModelFromJson(json);
}
