// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoCommentModel {

@JsonKey(name: "comment") String get comment;@JsonKey(name: "id") int get id;@JsonKey(name: "like") int get like;@JsonKey(name: "dislike") int get dislike;@JsonKey(name: "user_information") int get userInformation;@JsonKey(name: "created_at") DateTime get createdAt;@JsonKey(name: "user_image") dynamic get userImage;@JsonKey(name: "user_name") String get userName;@JsonKey(name: "replies_count") int get repliesCount;@JsonKey(name: "is_like") bool get isLike;@JsonKey(name: "is_dislike") bool get isDislike;@JsonKey(name: "is_verified") bool get isVerified;
/// Create a copy of VideoCommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoCommentModelCopyWith<VideoCommentModel> get copyWith => _$VideoCommentModelCopyWithImpl<VideoCommentModel>(this as VideoCommentModel, _$identity);

  /// Serializes this VideoCommentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoCommentModel&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.id, id) || other.id == id)&&(identical(other.like, like) || other.like == like)&&(identical(other.dislike, dislike) || other.dislike == dislike)&&(identical(other.userInformation, userInformation) || other.userInformation == userInformation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.userImage, userImage)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.isLike, isLike) || other.isLike == isLike)&&(identical(other.isDislike, isDislike) || other.isDislike == isDislike)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,id,like,dislike,userInformation,createdAt,const DeepCollectionEquality().hash(userImage),userName,repliesCount,isLike,isDislike,isVerified);

@override
String toString() {
  return 'VideoCommentModel(comment: $comment, id: $id, like: $like, dislike: $dislike, userInformation: $userInformation, createdAt: $createdAt, userImage: $userImage, userName: $userName, repliesCount: $repliesCount, isLike: $isLike, isDislike: $isDislike, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $VideoCommentModelCopyWith<$Res>  {
  factory $VideoCommentModelCopyWith(VideoCommentModel value, $Res Function(VideoCommentModel) _then) = _$VideoCommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "comment") String comment,@JsonKey(name: "id") int id,@JsonKey(name: "like") int like,@JsonKey(name: "dislike") int dislike,@JsonKey(name: "user_information") int userInformation,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "user_image") dynamic userImage,@JsonKey(name: "user_name") String userName,@JsonKey(name: "replies_count") int repliesCount,@JsonKey(name: "is_like") bool isLike,@JsonKey(name: "is_dislike") bool isDislike,@JsonKey(name: "is_verified") bool isVerified
});




}
/// @nodoc
class _$VideoCommentModelCopyWithImpl<$Res>
    implements $VideoCommentModelCopyWith<$Res> {
  _$VideoCommentModelCopyWithImpl(this._self, this._then);

  final VideoCommentModel _self;
  final $Res Function(VideoCommentModel) _then;

/// Create a copy of VideoCommentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,Object? id = null,Object? like = null,Object? dislike = null,Object? userInformation = null,Object? createdAt = null,Object? userImage = freezed,Object? userName = null,Object? repliesCount = null,Object? isLike = null,Object? isDislike = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,dislike: null == dislike ? _self.dislike : dislike // ignore: cast_nullable_to_non_nullable
as int,userInformation: null == userInformation ? _self.userInformation : userInformation // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userImage: freezed == userImage ? _self.userImage : userImage // ignore: cast_nullable_to_non_nullable
as dynamic,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,repliesCount: null == repliesCount ? _self.repliesCount : repliesCount // ignore: cast_nullable_to_non_nullable
as int,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,isDislike: null == isDislike ? _self.isDislike : isDislike // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoCommentModel].
extension VideoCommentModelPatterns on VideoCommentModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoCommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoCommentModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoCommentModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoCommentModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoCommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoCommentModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "comment")  String comment, @JsonKey(name: "id")  int id, @JsonKey(name: "like")  int like, @JsonKey(name: "dislike")  int dislike, @JsonKey(name: "user_information")  int userInformation, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "user_image")  dynamic userImage, @JsonKey(name: "user_name")  String userName, @JsonKey(name: "replies_count")  int repliesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "is_dislike")  bool isDislike, @JsonKey(name: "is_verified")  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoCommentModel() when $default != null:
return $default(_that.comment,_that.id,_that.like,_that.dislike,_that.userInformation,_that.createdAt,_that.userImage,_that.userName,_that.repliesCount,_that.isLike,_that.isDislike,_that.isVerified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "comment")  String comment, @JsonKey(name: "id")  int id, @JsonKey(name: "like")  int like, @JsonKey(name: "dislike")  int dislike, @JsonKey(name: "user_information")  int userInformation, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "user_image")  dynamic userImage, @JsonKey(name: "user_name")  String userName, @JsonKey(name: "replies_count")  int repliesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "is_dislike")  bool isDislike, @JsonKey(name: "is_verified")  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _VideoCommentModel():
return $default(_that.comment,_that.id,_that.like,_that.dislike,_that.userInformation,_that.createdAt,_that.userImage,_that.userName,_that.repliesCount,_that.isLike,_that.isDislike,_that.isVerified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "comment")  String comment, @JsonKey(name: "id")  int id, @JsonKey(name: "like")  int like, @JsonKey(name: "dislike")  int dislike, @JsonKey(name: "user_information")  int userInformation, @JsonKey(name: "created_at")  DateTime createdAt, @JsonKey(name: "user_image")  dynamic userImage, @JsonKey(name: "user_name")  String userName, @JsonKey(name: "replies_count")  int repliesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "is_dislike")  bool isDislike, @JsonKey(name: "is_verified")  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _VideoCommentModel() when $default != null:
return $default(_that.comment,_that.id,_that.like,_that.dislike,_that.userInformation,_that.createdAt,_that.userImage,_that.userName,_that.repliesCount,_that.isLike,_that.isDislike,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoCommentModel implements VideoCommentModel {
  const _VideoCommentModel({@JsonKey(name: "comment") required this.comment, @JsonKey(name: "id") required this.id, @JsonKey(name: "like") required this.like, @JsonKey(name: "dislike") required this.dislike, @JsonKey(name: "user_information") required this.userInformation, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "user_image") required this.userImage, @JsonKey(name: "user_name") required this.userName, @JsonKey(name: "replies_count") required this.repliesCount, @JsonKey(name: "is_like") required this.isLike, @JsonKey(name: "is_dislike") required this.isDislike, @JsonKey(name: "is_verified") required this.isVerified});
  factory _VideoCommentModel.fromJson(Map<String, dynamic> json) => _$VideoCommentModelFromJson(json);

@override@JsonKey(name: "comment") final  String comment;
@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "like") final  int like;
@override@JsonKey(name: "dislike") final  int dislike;
@override@JsonKey(name: "user_information") final  int userInformation;
@override@JsonKey(name: "created_at") final  DateTime createdAt;
@override@JsonKey(name: "user_image") final  dynamic userImage;
@override@JsonKey(name: "user_name") final  String userName;
@override@JsonKey(name: "replies_count") final  int repliesCount;
@override@JsonKey(name: "is_like") final  bool isLike;
@override@JsonKey(name: "is_dislike") final  bool isDislike;
@override@JsonKey(name: "is_verified") final  bool isVerified;

/// Create a copy of VideoCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoCommentModelCopyWith<_VideoCommentModel> get copyWith => __$VideoCommentModelCopyWithImpl<_VideoCommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoCommentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoCommentModel&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.id, id) || other.id == id)&&(identical(other.like, like) || other.like == like)&&(identical(other.dislike, dislike) || other.dislike == dislike)&&(identical(other.userInformation, userInformation) || other.userInformation == userInformation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.userImage, userImage)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.repliesCount, repliesCount) || other.repliesCount == repliesCount)&&(identical(other.isLike, isLike) || other.isLike == isLike)&&(identical(other.isDislike, isDislike) || other.isDislike == isDislike)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,id,like,dislike,userInformation,createdAt,const DeepCollectionEquality().hash(userImage),userName,repliesCount,isLike,isDislike,isVerified);

@override
String toString() {
  return 'VideoCommentModel(comment: $comment, id: $id, like: $like, dislike: $dislike, userInformation: $userInformation, createdAt: $createdAt, userImage: $userImage, userName: $userName, repliesCount: $repliesCount, isLike: $isLike, isDislike: $isDislike, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$VideoCommentModelCopyWith<$Res> implements $VideoCommentModelCopyWith<$Res> {
  factory _$VideoCommentModelCopyWith(_VideoCommentModel value, $Res Function(_VideoCommentModel) _then) = __$VideoCommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "comment") String comment,@JsonKey(name: "id") int id,@JsonKey(name: "like") int like,@JsonKey(name: "dislike") int dislike,@JsonKey(name: "user_information") int userInformation,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "user_image") dynamic userImage,@JsonKey(name: "user_name") String userName,@JsonKey(name: "replies_count") int repliesCount,@JsonKey(name: "is_like") bool isLike,@JsonKey(name: "is_dislike") bool isDislike,@JsonKey(name: "is_verified") bool isVerified
});




}
/// @nodoc
class __$VideoCommentModelCopyWithImpl<$Res>
    implements _$VideoCommentModelCopyWith<$Res> {
  __$VideoCommentModelCopyWithImpl(this._self, this._then);

  final _VideoCommentModel _self;
  final $Res Function(_VideoCommentModel) _then;

/// Create a copy of VideoCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? id = null,Object? like = null,Object? dislike = null,Object? userInformation = null,Object? createdAt = null,Object? userImage = freezed,Object? userName = null,Object? repliesCount = null,Object? isLike = null,Object? isDislike = null,Object? isVerified = null,}) {
  return _then(_VideoCommentModel(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,dislike: null == dislike ? _self.dislike : dislike // ignore: cast_nullable_to_non_nullable
as int,userInformation: null == userInformation ? _self.userInformation : userInformation // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userImage: freezed == userImage ? _self.userImage : userImage // ignore: cast_nullable_to_non_nullable
as dynamic,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,repliesCount: null == repliesCount ? _self.repliesCount : repliesCount // ignore: cast_nullable_to_non_nullable
as int,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,isDislike: null == isDislike ? _self.isDislike : isDislike // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
