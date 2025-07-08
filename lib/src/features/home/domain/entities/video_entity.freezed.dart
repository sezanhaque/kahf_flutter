// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoEntity {

 int get id; String get title; String get thumbnail; String get channelName; String get channelImage; int get viewCount; DateTime get publishedAt; Duration get duration; String get description; bool get isVerified; String get channelSlug; String? get manifest; List<Mp4Url>? get qualities; int get mashallah; int get like; List<VideoCommentModel>? get comments; String get channelSubscriber;
/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoEntityCopyWith<VideoEntity> get copyWith => _$VideoEntityCopyWithImpl<VideoEntity>(this as VideoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelImage, channelImage) || other.channelImage == channelImage)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.description, description) || other.description == description)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.channelSlug, channelSlug) || other.channelSlug == channelSlug)&&(identical(other.manifest, manifest) || other.manifest == manifest)&&const DeepCollectionEquality().equals(other.qualities, qualities)&&(identical(other.mashallah, mashallah) || other.mashallah == mashallah)&&(identical(other.like, like) || other.like == like)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.channelSubscriber, channelSubscriber) || other.channelSubscriber == channelSubscriber));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnail,channelName,channelImage,viewCount,publishedAt,duration,description,isVerified,channelSlug,manifest,const DeepCollectionEquality().hash(qualities),mashallah,like,const DeepCollectionEquality().hash(comments),channelSubscriber);

@override
String toString() {
  return 'VideoEntity(id: $id, title: $title, thumbnail: $thumbnail, channelName: $channelName, channelImage: $channelImage, viewCount: $viewCount, publishedAt: $publishedAt, duration: $duration, description: $description, isVerified: $isVerified, channelSlug: $channelSlug, manifest: $manifest, qualities: $qualities, mashallah: $mashallah, like: $like, comments: $comments, channelSubscriber: $channelSubscriber)';
}


}

/// @nodoc
abstract mixin class $VideoEntityCopyWith<$Res>  {
  factory $VideoEntityCopyWith(VideoEntity value, $Res Function(VideoEntity) _then) = _$VideoEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String thumbnail, String channelName, String channelImage, int viewCount, DateTime publishedAt, Duration duration, String description, bool isVerified, String channelSlug, String? manifest, List<Mp4Url>? qualities, int mashallah, int like, List<VideoCommentModel>? comments, String channelSubscriber
});




}
/// @nodoc
class _$VideoEntityCopyWithImpl<$Res>
    implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._self, this._then);

  final VideoEntity _self;
  final $Res Function(VideoEntity) _then;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? thumbnail = null,Object? channelName = null,Object? channelImage = null,Object? viewCount = null,Object? publishedAt = null,Object? duration = null,Object? description = null,Object? isVerified = null,Object? channelSlug = null,Object? manifest = freezed,Object? qualities = freezed,Object? mashallah = null,Object? like = null,Object? comments = freezed,Object? channelSubscriber = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelImage: null == channelImage ? _self.channelImage : channelImage // ignore: cast_nullable_to_non_nullable
as String,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,channelSlug: null == channelSlug ? _self.channelSlug : channelSlug // ignore: cast_nullable_to_non_nullable
as String,manifest: freezed == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as String?,qualities: freezed == qualities ? _self.qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<Mp4Url>?,mashallah: null == mashallah ? _self.mashallah : mashallah // ignore: cast_nullable_to_non_nullable
as int,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<VideoCommentModel>?,channelSubscriber: null == channelSubscriber ? _self.channelSubscriber : channelSubscriber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoEntity].
extension VideoEntityPatterns on VideoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoEntity value)  $default,){
final _that = this;
switch (_that) {
case _VideoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String thumbnail,  String channelName,  String channelImage,  int viewCount,  DateTime publishedAt,  Duration duration,  String description,  bool isVerified,  String channelSlug,  String? manifest,  List<Mp4Url>? qualities,  int mashallah,  int like,  List<VideoCommentModel>? comments,  String channelSubscriber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
return $default(_that.id,_that.title,_that.thumbnail,_that.channelName,_that.channelImage,_that.viewCount,_that.publishedAt,_that.duration,_that.description,_that.isVerified,_that.channelSlug,_that.manifest,_that.qualities,_that.mashallah,_that.like,_that.comments,_that.channelSubscriber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String thumbnail,  String channelName,  String channelImage,  int viewCount,  DateTime publishedAt,  Duration duration,  String description,  bool isVerified,  String channelSlug,  String? manifest,  List<Mp4Url>? qualities,  int mashallah,  int like,  List<VideoCommentModel>? comments,  String channelSubscriber)  $default,) {final _that = this;
switch (_that) {
case _VideoEntity():
return $default(_that.id,_that.title,_that.thumbnail,_that.channelName,_that.channelImage,_that.viewCount,_that.publishedAt,_that.duration,_that.description,_that.isVerified,_that.channelSlug,_that.manifest,_that.qualities,_that.mashallah,_that.like,_that.comments,_that.channelSubscriber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String thumbnail,  String channelName,  String channelImage,  int viewCount,  DateTime publishedAt,  Duration duration,  String description,  bool isVerified,  String channelSlug,  String? manifest,  List<Mp4Url>? qualities,  int mashallah,  int like,  List<VideoCommentModel>? comments,  String channelSubscriber)?  $default,) {final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
return $default(_that.id,_that.title,_that.thumbnail,_that.channelName,_that.channelImage,_that.viewCount,_that.publishedAt,_that.duration,_that.description,_that.isVerified,_that.channelSlug,_that.manifest,_that.qualities,_that.mashallah,_that.like,_that.comments,_that.channelSubscriber);case _:
  return null;

}
}

}

/// @nodoc


class _VideoEntity implements VideoEntity {
  const _VideoEntity({required this.id, required this.title, required this.thumbnail, required this.channelName, required this.channelImage, required this.viewCount, required this.publishedAt, required this.duration, required this.description, required this.isVerified, required this.channelSlug, this.manifest, final  List<Mp4Url>? qualities, required this.mashallah, required this.like, final  List<VideoCommentModel>? comments, required this.channelSubscriber}): _qualities = qualities,_comments = comments;
  

@override final  int id;
@override final  String title;
@override final  String thumbnail;
@override final  String channelName;
@override final  String channelImage;
@override final  int viewCount;
@override final  DateTime publishedAt;
@override final  Duration duration;
@override final  String description;
@override final  bool isVerified;
@override final  String channelSlug;
@override final  String? manifest;
 final  List<Mp4Url>? _qualities;
@override List<Mp4Url>? get qualities {
  final value = _qualities;
  if (value == null) return null;
  if (_qualities is EqualUnmodifiableListView) return _qualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int mashallah;
@override final  int like;
 final  List<VideoCommentModel>? _comments;
@override List<VideoCommentModel>? get comments {
  final value = _comments;
  if (value == null) return null;
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String channelSubscriber;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoEntityCopyWith<_VideoEntity> get copyWith => __$VideoEntityCopyWithImpl<_VideoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelImage, channelImage) || other.channelImage == channelImage)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.description, description) || other.description == description)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.channelSlug, channelSlug) || other.channelSlug == channelSlug)&&(identical(other.manifest, manifest) || other.manifest == manifest)&&const DeepCollectionEquality().equals(other._qualities, _qualities)&&(identical(other.mashallah, mashallah) || other.mashallah == mashallah)&&(identical(other.like, like) || other.like == like)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.channelSubscriber, channelSubscriber) || other.channelSubscriber == channelSubscriber));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnail,channelName,channelImage,viewCount,publishedAt,duration,description,isVerified,channelSlug,manifest,const DeepCollectionEquality().hash(_qualities),mashallah,like,const DeepCollectionEquality().hash(_comments),channelSubscriber);

@override
String toString() {
  return 'VideoEntity(id: $id, title: $title, thumbnail: $thumbnail, channelName: $channelName, channelImage: $channelImage, viewCount: $viewCount, publishedAt: $publishedAt, duration: $duration, description: $description, isVerified: $isVerified, channelSlug: $channelSlug, manifest: $manifest, qualities: $qualities, mashallah: $mashallah, like: $like, comments: $comments, channelSubscriber: $channelSubscriber)';
}


}

/// @nodoc
abstract mixin class _$VideoEntityCopyWith<$Res> implements $VideoEntityCopyWith<$Res> {
  factory _$VideoEntityCopyWith(_VideoEntity value, $Res Function(_VideoEntity) _then) = __$VideoEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String thumbnail, String channelName, String channelImage, int viewCount, DateTime publishedAt, Duration duration, String description, bool isVerified, String channelSlug, String? manifest, List<Mp4Url>? qualities, int mashallah, int like, List<VideoCommentModel>? comments, String channelSubscriber
});




}
/// @nodoc
class __$VideoEntityCopyWithImpl<$Res>
    implements _$VideoEntityCopyWith<$Res> {
  __$VideoEntityCopyWithImpl(this._self, this._then);

  final _VideoEntity _self;
  final $Res Function(_VideoEntity) _then;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? thumbnail = null,Object? channelName = null,Object? channelImage = null,Object? viewCount = null,Object? publishedAt = null,Object? duration = null,Object? description = null,Object? isVerified = null,Object? channelSlug = null,Object? manifest = freezed,Object? qualities = freezed,Object? mashallah = null,Object? like = null,Object? comments = freezed,Object? channelSubscriber = null,}) {
  return _then(_VideoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelImage: null == channelImage ? _self.channelImage : channelImage // ignore: cast_nullable_to_non_nullable
as String,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,channelSlug: null == channelSlug ? _self.channelSlug : channelSlug // ignore: cast_nullable_to_non_nullable
as String,manifest: freezed == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as String?,qualities: freezed == qualities ? _self._qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<Mp4Url>?,mashallah: null == mashallah ? _self.mashallah : mashallah // ignore: cast_nullable_to_non_nullable
as int,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int,comments: freezed == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<VideoCommentModel>?,channelSubscriber: null == channelSubscriber ? _self.channelSubscriber : channelSubscriber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
