// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "thumbnail") String get thumbnail;@JsonKey(name: "title") String? get title;@JsonKey(name: "description") String? get description;@JsonKey(name: "date_and_time") DateTime? get dateAndTime;@JsonKey(name: "slug") String get slug;@JsonKey(name: "created_at") DateTime? get createdAt;@JsonKey(name: "manifest") String? get manifest;@JsonKey(name: "live_status") int? get liveStatus;@JsonKey(name: "live_manifest") dynamic get liveManifest;@JsonKey(name: "is_live") bool? get isLive;@JsonKey(name: "streaming_provider") StreamingProvider? get streamingProvider;@JsonKey(name: "streaming_type") StreamingType? get streamingType;@JsonKey(name: "mp4_urls") List<Mp4Url>? get mp4Urls;@JsonKey(name: "channel_image") String get channelImage;@JsonKey(name: "channel_name") String get channelName;@JsonKey(name: "channel_username") String? get channelUsername;@JsonKey(name: "is_verified") bool get isVerified;@JsonKey(name: "channel_slug") String get channelSlug;@JsonKey(name: "channel_subscriber") String get channelSubscriber;@JsonKey(name: "channel_id") int get channelId;@JsonKey(name: "type") String? get type;@JsonKey(name: "viewers") String? get viewers;@JsonKey(name: "duration") String? get duration;@JsonKey(name: "object_type") ObjectType get objectType;@JsonKey(name: "all_time_hottest_score") double? get allTimeHottestScore;@JsonKey(name: "average_hottest_score") double? get averageHottestScore;@JsonKey(name: "like") int? get like;@JsonKey(name: "mashallah") int? get mashallah;@JsonKey(name: "comment_count") int? get commentCount;@JsonKey(name: "score_type") ScoreType? get scoreType;@JsonKey(name: "score") double? get score;@JsonKey(name: "views_in_number") String? get viewsInNumber;@JsonKey(name: "comments") List<VideoCommentModel>? get comments;@JsonKey(name: "rank") int? get rank;@JsonKey(name: "name") String? get name;@JsonKey(name: "details") String? get details;@JsonKey(name: "videos_count") int? get videosCount;
/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoModelCopyWith<VideoModel> get copyWith => _$VideoModelCopyWithImpl<VideoModel>(this as VideoModel, _$identity);

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAndTime, dateAndTime) || other.dateAndTime == dateAndTime)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.manifest, manifest) || other.manifest == manifest)&&(identical(other.liveStatus, liveStatus) || other.liveStatus == liveStatus)&&const DeepCollectionEquality().equals(other.liveManifest, liveManifest)&&(identical(other.isLive, isLive) || other.isLive == isLive)&&(identical(other.streamingProvider, streamingProvider) || other.streamingProvider == streamingProvider)&&(identical(other.streamingType, streamingType) || other.streamingType == streamingType)&&const DeepCollectionEquality().equals(other.mp4Urls, mp4Urls)&&(identical(other.channelImage, channelImage) || other.channelImage == channelImage)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelUsername, channelUsername) || other.channelUsername == channelUsername)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.channelSlug, channelSlug) || other.channelSlug == channelSlug)&&(identical(other.channelSubscriber, channelSubscriber) || other.channelSubscriber == channelSubscriber)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.type, type) || other.type == type)&&(identical(other.viewers, viewers) || other.viewers == viewers)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.allTimeHottestScore, allTimeHottestScore) || other.allTimeHottestScore == allTimeHottestScore)&&(identical(other.averageHottestScore, averageHottestScore) || other.averageHottestScore == averageHottestScore)&&(identical(other.like, like) || other.like == like)&&(identical(other.mashallah, mashallah) || other.mashallah == mashallah)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.scoreType, scoreType) || other.scoreType == scoreType)&&(identical(other.score, score) || other.score == score)&&(identical(other.viewsInNumber, viewsInNumber) || other.viewsInNumber == viewsInNumber)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.name, name) || other.name == name)&&(identical(other.details, details) || other.details == details)&&(identical(other.videosCount, videosCount) || other.videosCount == videosCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,thumbnail,title,description,dateAndTime,slug,createdAt,manifest,liveStatus,const DeepCollectionEquality().hash(liveManifest),isLive,streamingProvider,streamingType,const DeepCollectionEquality().hash(mp4Urls),channelImage,channelName,channelUsername,isVerified,channelSlug,channelSubscriber,channelId,type,viewers,duration,objectType,allTimeHottestScore,averageHottestScore,like,mashallah,commentCount,scoreType,score,viewsInNumber,const DeepCollectionEquality().hash(comments),rank,name,details,videosCount]);

@override
String toString() {
  return 'VideoModel(id: $id, thumbnail: $thumbnail, title: $title, description: $description, dateAndTime: $dateAndTime, slug: $slug, createdAt: $createdAt, manifest: $manifest, liveStatus: $liveStatus, liveManifest: $liveManifest, isLive: $isLive, streamingProvider: $streamingProvider, streamingType: $streamingType, mp4Urls: $mp4Urls, channelImage: $channelImage, channelName: $channelName, channelUsername: $channelUsername, isVerified: $isVerified, channelSlug: $channelSlug, channelSubscriber: $channelSubscriber, channelId: $channelId, type: $type, viewers: $viewers, duration: $duration, objectType: $objectType, allTimeHottestScore: $allTimeHottestScore, averageHottestScore: $averageHottestScore, like: $like, mashallah: $mashallah, commentCount: $commentCount, scoreType: $scoreType, score: $score, viewsInNumber: $viewsInNumber, comments: $comments, rank: $rank, name: $name, details: $details, videosCount: $videosCount)';
}


}

/// @nodoc
abstract mixin class $VideoModelCopyWith<$Res>  {
  factory $VideoModelCopyWith(VideoModel value, $Res Function(VideoModel) _then) = _$VideoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "thumbnail") String thumbnail,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "date_and_time") DateTime? dateAndTime,@JsonKey(name: "slug") String slug,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "manifest") String? manifest,@JsonKey(name: "live_status") int? liveStatus,@JsonKey(name: "live_manifest") dynamic liveManifest,@JsonKey(name: "is_live") bool? isLive,@JsonKey(name: "streaming_provider") StreamingProvider? streamingProvider,@JsonKey(name: "streaming_type") StreamingType? streamingType,@JsonKey(name: "mp4_urls") List<Mp4Url>? mp4Urls,@JsonKey(name: "channel_image") String channelImage,@JsonKey(name: "channel_name") String channelName,@JsonKey(name: "channel_username") String? channelUsername,@JsonKey(name: "is_verified") bool isVerified,@JsonKey(name: "channel_slug") String channelSlug,@JsonKey(name: "channel_subscriber") String channelSubscriber,@JsonKey(name: "channel_id") int channelId,@JsonKey(name: "type") String? type,@JsonKey(name: "viewers") String? viewers,@JsonKey(name: "duration") String? duration,@JsonKey(name: "object_type") ObjectType objectType,@JsonKey(name: "all_time_hottest_score") double? allTimeHottestScore,@JsonKey(name: "average_hottest_score") double? averageHottestScore,@JsonKey(name: "like") int? like,@JsonKey(name: "mashallah") int? mashallah,@JsonKey(name: "comment_count") int? commentCount,@JsonKey(name: "score_type") ScoreType? scoreType,@JsonKey(name: "score") double? score,@JsonKey(name: "views_in_number") String? viewsInNumber,@JsonKey(name: "comments") List<VideoCommentModel>? comments,@JsonKey(name: "rank") int? rank,@JsonKey(name: "name") String? name,@JsonKey(name: "details") String? details,@JsonKey(name: "videos_count") int? videosCount
});




}
/// @nodoc
class _$VideoModelCopyWithImpl<$Res>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._self, this._then);

  final VideoModel _self;
  final $Res Function(VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? thumbnail = null,Object? title = freezed,Object? description = freezed,Object? dateAndTime = freezed,Object? slug = null,Object? createdAt = freezed,Object? manifest = freezed,Object? liveStatus = freezed,Object? liveManifest = freezed,Object? isLive = freezed,Object? streamingProvider = freezed,Object? streamingType = freezed,Object? mp4Urls = freezed,Object? channelImage = null,Object? channelName = null,Object? channelUsername = freezed,Object? isVerified = null,Object? channelSlug = null,Object? channelSubscriber = null,Object? channelId = null,Object? type = freezed,Object? viewers = freezed,Object? duration = freezed,Object? objectType = null,Object? allTimeHottestScore = freezed,Object? averageHottestScore = freezed,Object? like = freezed,Object? mashallah = freezed,Object? commentCount = freezed,Object? scoreType = freezed,Object? score = freezed,Object? viewsInNumber = freezed,Object? comments = freezed,Object? rank = freezed,Object? name = freezed,Object? details = freezed,Object? videosCount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dateAndTime: freezed == dateAndTime ? _self.dateAndTime : dateAndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,manifest: freezed == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as String?,liveStatus: freezed == liveStatus ? _self.liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as int?,liveManifest: freezed == liveManifest ? _self.liveManifest : liveManifest // ignore: cast_nullable_to_non_nullable
as dynamic,isLive: freezed == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool?,streamingProvider: freezed == streamingProvider ? _self.streamingProvider : streamingProvider // ignore: cast_nullable_to_non_nullable
as StreamingProvider?,streamingType: freezed == streamingType ? _self.streamingType : streamingType // ignore: cast_nullable_to_non_nullable
as StreamingType?,mp4Urls: freezed == mp4Urls ? _self.mp4Urls : mp4Urls // ignore: cast_nullable_to_non_nullable
as List<Mp4Url>?,channelImage: null == channelImage ? _self.channelImage : channelImage // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelUsername: freezed == channelUsername ? _self.channelUsername : channelUsername // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,channelSlug: null == channelSlug ? _self.channelSlug : channelSlug // ignore: cast_nullable_to_non_nullable
as String,channelSubscriber: null == channelSubscriber ? _self.channelSubscriber : channelSubscriber // ignore: cast_nullable_to_non_nullable
as String,channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,viewers: freezed == viewers ? _self.viewers : viewers // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,allTimeHottestScore: freezed == allTimeHottestScore ? _self.allTimeHottestScore : allTimeHottestScore // ignore: cast_nullable_to_non_nullable
as double?,averageHottestScore: freezed == averageHottestScore ? _self.averageHottestScore : averageHottestScore // ignore: cast_nullable_to_non_nullable
as double?,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int?,mashallah: freezed == mashallah ? _self.mashallah : mashallah // ignore: cast_nullable_to_non_nullable
as int?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,scoreType: freezed == scoreType ? _self.scoreType : scoreType // ignore: cast_nullable_to_non_nullable
as ScoreType?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,viewsInNumber: freezed == viewsInNumber ? _self.viewsInNumber : viewsInNumber // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<VideoCommentModel>?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,videosCount: freezed == videosCount ? _self.videosCount : videosCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoModel].
extension VideoModelPatterns on VideoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoModel value)  $default,){
final _that = this;
switch (_that) {
case _VideoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoModel value)?  $default,){
final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date_and_time")  DateTime? dateAndTime, @JsonKey(name: "slug")  String slug, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "manifest")  String? manifest, @JsonKey(name: "live_status")  int? liveStatus, @JsonKey(name: "live_manifest")  dynamic liveManifest, @JsonKey(name: "is_live")  bool? isLive, @JsonKey(name: "streaming_provider")  StreamingProvider? streamingProvider, @JsonKey(name: "streaming_type")  StreamingType? streamingType, @JsonKey(name: "mp4_urls")  List<Mp4Url>? mp4Urls, @JsonKey(name: "channel_image")  String channelImage, @JsonKey(name: "channel_name")  String channelName, @JsonKey(name: "channel_username")  String? channelUsername, @JsonKey(name: "is_verified")  bool isVerified, @JsonKey(name: "channel_slug")  String channelSlug, @JsonKey(name: "channel_subscriber")  String channelSubscriber, @JsonKey(name: "channel_id")  int channelId, @JsonKey(name: "type")  String? type, @JsonKey(name: "viewers")  String? viewers, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "object_type")  ObjectType objectType, @JsonKey(name: "all_time_hottest_score")  double? allTimeHottestScore, @JsonKey(name: "average_hottest_score")  double? averageHottestScore, @JsonKey(name: "like")  int? like, @JsonKey(name: "mashallah")  int? mashallah, @JsonKey(name: "comment_count")  int? commentCount, @JsonKey(name: "score_type")  ScoreType? scoreType, @JsonKey(name: "score")  double? score, @JsonKey(name: "views_in_number")  String? viewsInNumber, @JsonKey(name: "comments")  List<VideoCommentModel>? comments, @JsonKey(name: "rank")  int? rank, @JsonKey(name: "name")  String? name, @JsonKey(name: "details")  String? details, @JsonKey(name: "videos_count")  int? videosCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.id,_that.thumbnail,_that.title,_that.description,_that.dateAndTime,_that.slug,_that.createdAt,_that.manifest,_that.liveStatus,_that.liveManifest,_that.isLive,_that.streamingProvider,_that.streamingType,_that.mp4Urls,_that.channelImage,_that.channelName,_that.channelUsername,_that.isVerified,_that.channelSlug,_that.channelSubscriber,_that.channelId,_that.type,_that.viewers,_that.duration,_that.objectType,_that.allTimeHottestScore,_that.averageHottestScore,_that.like,_that.mashallah,_that.commentCount,_that.scoreType,_that.score,_that.viewsInNumber,_that.comments,_that.rank,_that.name,_that.details,_that.videosCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date_and_time")  DateTime? dateAndTime, @JsonKey(name: "slug")  String slug, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "manifest")  String? manifest, @JsonKey(name: "live_status")  int? liveStatus, @JsonKey(name: "live_manifest")  dynamic liveManifest, @JsonKey(name: "is_live")  bool? isLive, @JsonKey(name: "streaming_provider")  StreamingProvider? streamingProvider, @JsonKey(name: "streaming_type")  StreamingType? streamingType, @JsonKey(name: "mp4_urls")  List<Mp4Url>? mp4Urls, @JsonKey(name: "channel_image")  String channelImage, @JsonKey(name: "channel_name")  String channelName, @JsonKey(name: "channel_username")  String? channelUsername, @JsonKey(name: "is_verified")  bool isVerified, @JsonKey(name: "channel_slug")  String channelSlug, @JsonKey(name: "channel_subscriber")  String channelSubscriber, @JsonKey(name: "channel_id")  int channelId, @JsonKey(name: "type")  String? type, @JsonKey(name: "viewers")  String? viewers, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "object_type")  ObjectType objectType, @JsonKey(name: "all_time_hottest_score")  double? allTimeHottestScore, @JsonKey(name: "average_hottest_score")  double? averageHottestScore, @JsonKey(name: "like")  int? like, @JsonKey(name: "mashallah")  int? mashallah, @JsonKey(name: "comment_count")  int? commentCount, @JsonKey(name: "score_type")  ScoreType? scoreType, @JsonKey(name: "score")  double? score, @JsonKey(name: "views_in_number")  String? viewsInNumber, @JsonKey(name: "comments")  List<VideoCommentModel>? comments, @JsonKey(name: "rank")  int? rank, @JsonKey(name: "name")  String? name, @JsonKey(name: "details")  String? details, @JsonKey(name: "videos_count")  int? videosCount)  $default,) {final _that = this;
switch (_that) {
case _VideoModel():
return $default(_that.id,_that.thumbnail,_that.title,_that.description,_that.dateAndTime,_that.slug,_that.createdAt,_that.manifest,_that.liveStatus,_that.liveManifest,_that.isLive,_that.streamingProvider,_that.streamingType,_that.mp4Urls,_that.channelImage,_that.channelName,_that.channelUsername,_that.isVerified,_that.channelSlug,_that.channelSubscriber,_that.channelId,_that.type,_that.viewers,_that.duration,_that.objectType,_that.allTimeHottestScore,_that.averageHottestScore,_that.like,_that.mashallah,_that.commentCount,_that.scoreType,_that.score,_that.viewsInNumber,_that.comments,_that.rank,_that.name,_that.details,_that.videosCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "thumbnail")  String thumbnail, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "date_and_time")  DateTime? dateAndTime, @JsonKey(name: "slug")  String slug, @JsonKey(name: "created_at")  DateTime? createdAt, @JsonKey(name: "manifest")  String? manifest, @JsonKey(name: "live_status")  int? liveStatus, @JsonKey(name: "live_manifest")  dynamic liveManifest, @JsonKey(name: "is_live")  bool? isLive, @JsonKey(name: "streaming_provider")  StreamingProvider? streamingProvider, @JsonKey(name: "streaming_type")  StreamingType? streamingType, @JsonKey(name: "mp4_urls")  List<Mp4Url>? mp4Urls, @JsonKey(name: "channel_image")  String channelImage, @JsonKey(name: "channel_name")  String channelName, @JsonKey(name: "channel_username")  String? channelUsername, @JsonKey(name: "is_verified")  bool isVerified, @JsonKey(name: "channel_slug")  String channelSlug, @JsonKey(name: "channel_subscriber")  String channelSubscriber, @JsonKey(name: "channel_id")  int channelId, @JsonKey(name: "type")  String? type, @JsonKey(name: "viewers")  String? viewers, @JsonKey(name: "duration")  String? duration, @JsonKey(name: "object_type")  ObjectType objectType, @JsonKey(name: "all_time_hottest_score")  double? allTimeHottestScore, @JsonKey(name: "average_hottest_score")  double? averageHottestScore, @JsonKey(name: "like")  int? like, @JsonKey(name: "mashallah")  int? mashallah, @JsonKey(name: "comment_count")  int? commentCount, @JsonKey(name: "score_type")  ScoreType? scoreType, @JsonKey(name: "score")  double? score, @JsonKey(name: "views_in_number")  String? viewsInNumber, @JsonKey(name: "comments")  List<VideoCommentModel>? comments, @JsonKey(name: "rank")  int? rank, @JsonKey(name: "name")  String? name, @JsonKey(name: "details")  String? details, @JsonKey(name: "videos_count")  int? videosCount)?  $default,) {final _that = this;
switch (_that) {
case _VideoModel() when $default != null:
return $default(_that.id,_that.thumbnail,_that.title,_that.description,_that.dateAndTime,_that.slug,_that.createdAt,_that.manifest,_that.liveStatus,_that.liveManifest,_that.isLive,_that.streamingProvider,_that.streamingType,_that.mp4Urls,_that.channelImage,_that.channelName,_that.channelUsername,_that.isVerified,_that.channelSlug,_that.channelSubscriber,_that.channelId,_that.type,_that.viewers,_that.duration,_that.objectType,_that.allTimeHottestScore,_that.averageHottestScore,_that.like,_that.mashallah,_that.commentCount,_that.scoreType,_that.score,_that.viewsInNumber,_that.comments,_that.rank,_that.name,_that.details,_that.videosCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoModel implements VideoModel {
  const _VideoModel({@JsonKey(name: "id") this.id, @JsonKey(name: "thumbnail") required this.thumbnail, @JsonKey(name: "title") this.title, @JsonKey(name: "description") this.description, @JsonKey(name: "date_and_time") this.dateAndTime, @JsonKey(name: "slug") required this.slug, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "manifest") this.manifest, @JsonKey(name: "live_status") this.liveStatus, @JsonKey(name: "live_manifest") this.liveManifest, @JsonKey(name: "is_live") this.isLive, @JsonKey(name: "streaming_provider") this.streamingProvider, @JsonKey(name: "streaming_type") this.streamingType, @JsonKey(name: "mp4_urls") final  List<Mp4Url>? mp4Urls, @JsonKey(name: "channel_image") required this.channelImage, @JsonKey(name: "channel_name") required this.channelName, @JsonKey(name: "channel_username") this.channelUsername, @JsonKey(name: "is_verified") required this.isVerified, @JsonKey(name: "channel_slug") required this.channelSlug, @JsonKey(name: "channel_subscriber") required this.channelSubscriber, @JsonKey(name: "channel_id") required this.channelId, @JsonKey(name: "type") this.type, @JsonKey(name: "viewers") this.viewers, @JsonKey(name: "duration") this.duration, @JsonKey(name: "object_type") required this.objectType, @JsonKey(name: "all_time_hottest_score") this.allTimeHottestScore, @JsonKey(name: "average_hottest_score") this.averageHottestScore, @JsonKey(name: "like") this.like, @JsonKey(name: "mashallah") this.mashallah, @JsonKey(name: "comment_count") this.commentCount, @JsonKey(name: "score_type") this.scoreType, @JsonKey(name: "score") this.score, @JsonKey(name: "views_in_number") this.viewsInNumber, @JsonKey(name: "comments") final  List<VideoCommentModel>? comments, @JsonKey(name: "rank") this.rank, @JsonKey(name: "name") this.name, @JsonKey(name: "details") this.details, @JsonKey(name: "videos_count") this.videosCount}): _mp4Urls = mp4Urls,_comments = comments;
  factory _VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "thumbnail") final  String thumbnail;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "date_and_time") final  DateTime? dateAndTime;
@override@JsonKey(name: "slug") final  String slug;
@override@JsonKey(name: "created_at") final  DateTime? createdAt;
@override@JsonKey(name: "manifest") final  String? manifest;
@override@JsonKey(name: "live_status") final  int? liveStatus;
@override@JsonKey(name: "live_manifest") final  dynamic liveManifest;
@override@JsonKey(name: "is_live") final  bool? isLive;
@override@JsonKey(name: "streaming_provider") final  StreamingProvider? streamingProvider;
@override@JsonKey(name: "streaming_type") final  StreamingType? streamingType;
 final  List<Mp4Url>? _mp4Urls;
@override@JsonKey(name: "mp4_urls") List<Mp4Url>? get mp4Urls {
  final value = _mp4Urls;
  if (value == null) return null;
  if (_mp4Urls is EqualUnmodifiableListView) return _mp4Urls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "channel_image") final  String channelImage;
@override@JsonKey(name: "channel_name") final  String channelName;
@override@JsonKey(name: "channel_username") final  String? channelUsername;
@override@JsonKey(name: "is_verified") final  bool isVerified;
@override@JsonKey(name: "channel_slug") final  String channelSlug;
@override@JsonKey(name: "channel_subscriber") final  String channelSubscriber;
@override@JsonKey(name: "channel_id") final  int channelId;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "viewers") final  String? viewers;
@override@JsonKey(name: "duration") final  String? duration;
@override@JsonKey(name: "object_type") final  ObjectType objectType;
@override@JsonKey(name: "all_time_hottest_score") final  double? allTimeHottestScore;
@override@JsonKey(name: "average_hottest_score") final  double? averageHottestScore;
@override@JsonKey(name: "like") final  int? like;
@override@JsonKey(name: "mashallah") final  int? mashallah;
@override@JsonKey(name: "comment_count") final  int? commentCount;
@override@JsonKey(name: "score_type") final  ScoreType? scoreType;
@override@JsonKey(name: "score") final  double? score;
@override@JsonKey(name: "views_in_number") final  String? viewsInNumber;
 final  List<VideoCommentModel>? _comments;
@override@JsonKey(name: "comments") List<VideoCommentModel>? get comments {
  final value = _comments;
  if (value == null) return null;
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "rank") final  int? rank;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "details") final  String? details;
@override@JsonKey(name: "videos_count") final  int? videosCount;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoModelCopyWith<_VideoModel> get copyWith => __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAndTime, dateAndTime) || other.dateAndTime == dateAndTime)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.manifest, manifest) || other.manifest == manifest)&&(identical(other.liveStatus, liveStatus) || other.liveStatus == liveStatus)&&const DeepCollectionEquality().equals(other.liveManifest, liveManifest)&&(identical(other.isLive, isLive) || other.isLive == isLive)&&(identical(other.streamingProvider, streamingProvider) || other.streamingProvider == streamingProvider)&&(identical(other.streamingType, streamingType) || other.streamingType == streamingType)&&const DeepCollectionEquality().equals(other._mp4Urls, _mp4Urls)&&(identical(other.channelImage, channelImage) || other.channelImage == channelImage)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.channelUsername, channelUsername) || other.channelUsername == channelUsername)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.channelSlug, channelSlug) || other.channelSlug == channelSlug)&&(identical(other.channelSubscriber, channelSubscriber) || other.channelSubscriber == channelSubscriber)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.type, type) || other.type == type)&&(identical(other.viewers, viewers) || other.viewers == viewers)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.allTimeHottestScore, allTimeHottestScore) || other.allTimeHottestScore == allTimeHottestScore)&&(identical(other.averageHottestScore, averageHottestScore) || other.averageHottestScore == averageHottestScore)&&(identical(other.like, like) || other.like == like)&&(identical(other.mashallah, mashallah) || other.mashallah == mashallah)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.scoreType, scoreType) || other.scoreType == scoreType)&&(identical(other.score, score) || other.score == score)&&(identical(other.viewsInNumber, viewsInNumber) || other.viewsInNumber == viewsInNumber)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.name, name) || other.name == name)&&(identical(other.details, details) || other.details == details)&&(identical(other.videosCount, videosCount) || other.videosCount == videosCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,thumbnail,title,description,dateAndTime,slug,createdAt,manifest,liveStatus,const DeepCollectionEquality().hash(liveManifest),isLive,streamingProvider,streamingType,const DeepCollectionEquality().hash(_mp4Urls),channelImage,channelName,channelUsername,isVerified,channelSlug,channelSubscriber,channelId,type,viewers,duration,objectType,allTimeHottestScore,averageHottestScore,like,mashallah,commentCount,scoreType,score,viewsInNumber,const DeepCollectionEquality().hash(_comments),rank,name,details,videosCount]);

@override
String toString() {
  return 'VideoModel(id: $id, thumbnail: $thumbnail, title: $title, description: $description, dateAndTime: $dateAndTime, slug: $slug, createdAt: $createdAt, manifest: $manifest, liveStatus: $liveStatus, liveManifest: $liveManifest, isLive: $isLive, streamingProvider: $streamingProvider, streamingType: $streamingType, mp4Urls: $mp4Urls, channelImage: $channelImage, channelName: $channelName, channelUsername: $channelUsername, isVerified: $isVerified, channelSlug: $channelSlug, channelSubscriber: $channelSubscriber, channelId: $channelId, type: $type, viewers: $viewers, duration: $duration, objectType: $objectType, allTimeHottestScore: $allTimeHottestScore, averageHottestScore: $averageHottestScore, like: $like, mashallah: $mashallah, commentCount: $commentCount, scoreType: $scoreType, score: $score, viewsInNumber: $viewsInNumber, comments: $comments, rank: $rank, name: $name, details: $details, videosCount: $videosCount)';
}


}

/// @nodoc
abstract mixin class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(_VideoModel value, $Res Function(_VideoModel) _then) = __$VideoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "thumbnail") String thumbnail,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "date_and_time") DateTime? dateAndTime,@JsonKey(name: "slug") String slug,@JsonKey(name: "created_at") DateTime? createdAt,@JsonKey(name: "manifest") String? manifest,@JsonKey(name: "live_status") int? liveStatus,@JsonKey(name: "live_manifest") dynamic liveManifest,@JsonKey(name: "is_live") bool? isLive,@JsonKey(name: "streaming_provider") StreamingProvider? streamingProvider,@JsonKey(name: "streaming_type") StreamingType? streamingType,@JsonKey(name: "mp4_urls") List<Mp4Url>? mp4Urls,@JsonKey(name: "channel_image") String channelImage,@JsonKey(name: "channel_name") String channelName,@JsonKey(name: "channel_username") String? channelUsername,@JsonKey(name: "is_verified") bool isVerified,@JsonKey(name: "channel_slug") String channelSlug,@JsonKey(name: "channel_subscriber") String channelSubscriber,@JsonKey(name: "channel_id") int channelId,@JsonKey(name: "type") String? type,@JsonKey(name: "viewers") String? viewers,@JsonKey(name: "duration") String? duration,@JsonKey(name: "object_type") ObjectType objectType,@JsonKey(name: "all_time_hottest_score") double? allTimeHottestScore,@JsonKey(name: "average_hottest_score") double? averageHottestScore,@JsonKey(name: "like") int? like,@JsonKey(name: "mashallah") int? mashallah,@JsonKey(name: "comment_count") int? commentCount,@JsonKey(name: "score_type") ScoreType? scoreType,@JsonKey(name: "score") double? score,@JsonKey(name: "views_in_number") String? viewsInNumber,@JsonKey(name: "comments") List<VideoCommentModel>? comments,@JsonKey(name: "rank") int? rank,@JsonKey(name: "name") String? name,@JsonKey(name: "details") String? details,@JsonKey(name: "videos_count") int? videosCount
});




}
/// @nodoc
class __$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(this._self, this._then);

  final _VideoModel _self;
  final $Res Function(_VideoModel) _then;

/// Create a copy of VideoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? thumbnail = null,Object? title = freezed,Object? description = freezed,Object? dateAndTime = freezed,Object? slug = null,Object? createdAt = freezed,Object? manifest = freezed,Object? liveStatus = freezed,Object? liveManifest = freezed,Object? isLive = freezed,Object? streamingProvider = freezed,Object? streamingType = freezed,Object? mp4Urls = freezed,Object? channelImage = null,Object? channelName = null,Object? channelUsername = freezed,Object? isVerified = null,Object? channelSlug = null,Object? channelSubscriber = null,Object? channelId = null,Object? type = freezed,Object? viewers = freezed,Object? duration = freezed,Object? objectType = null,Object? allTimeHottestScore = freezed,Object? averageHottestScore = freezed,Object? like = freezed,Object? mashallah = freezed,Object? commentCount = freezed,Object? scoreType = freezed,Object? score = freezed,Object? viewsInNumber = freezed,Object? comments = freezed,Object? rank = freezed,Object? name = freezed,Object? details = freezed,Object? videosCount = freezed,}) {
  return _then(_VideoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dateAndTime: freezed == dateAndTime ? _self.dateAndTime : dateAndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,manifest: freezed == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as String?,liveStatus: freezed == liveStatus ? _self.liveStatus : liveStatus // ignore: cast_nullable_to_non_nullable
as int?,liveManifest: freezed == liveManifest ? _self.liveManifest : liveManifest // ignore: cast_nullable_to_non_nullable
as dynamic,isLive: freezed == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool?,streamingProvider: freezed == streamingProvider ? _self.streamingProvider : streamingProvider // ignore: cast_nullable_to_non_nullable
as StreamingProvider?,streamingType: freezed == streamingType ? _self.streamingType : streamingType // ignore: cast_nullable_to_non_nullable
as StreamingType?,mp4Urls: freezed == mp4Urls ? _self._mp4Urls : mp4Urls // ignore: cast_nullable_to_non_nullable
as List<Mp4Url>?,channelImage: null == channelImage ? _self.channelImage : channelImage // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,channelUsername: freezed == channelUsername ? _self.channelUsername : channelUsername // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,channelSlug: null == channelSlug ? _self.channelSlug : channelSlug // ignore: cast_nullable_to_non_nullable
as String,channelSubscriber: null == channelSubscriber ? _self.channelSubscriber : channelSubscriber // ignore: cast_nullable_to_non_nullable
as String,channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,viewers: freezed == viewers ? _self.viewers : viewers // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as ObjectType,allTimeHottestScore: freezed == allTimeHottestScore ? _self.allTimeHottestScore : allTimeHottestScore // ignore: cast_nullable_to_non_nullable
as double?,averageHottestScore: freezed == averageHottestScore ? _self.averageHottestScore : averageHottestScore // ignore: cast_nullable_to_non_nullable
as double?,like: freezed == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as int?,mashallah: freezed == mashallah ? _self.mashallah : mashallah // ignore: cast_nullable_to_non_nullable
as int?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,scoreType: freezed == scoreType ? _self.scoreType : scoreType // ignore: cast_nullable_to_non_nullable
as ScoreType?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,viewsInNumber: freezed == viewsInNumber ? _self.viewsInNumber : viewsInNumber // ignore: cast_nullable_to_non_nullable
as String?,comments: freezed == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<VideoCommentModel>?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,videosCount: freezed == videosCount ? _self.videosCount : videosCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Mp4Url {

@JsonKey(name: "quality") Quality get quality;@JsonKey(name: "video_url") String get videoUrl;
/// Create a copy of Mp4Url
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Mp4UrlCopyWith<Mp4Url> get copyWith => _$Mp4UrlCopyWithImpl<Mp4Url>(this as Mp4Url, _$identity);

  /// Serializes this Mp4Url to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mp4Url&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quality,videoUrl);

@override
String toString() {
  return 'Mp4Url(quality: $quality, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class $Mp4UrlCopyWith<$Res>  {
  factory $Mp4UrlCopyWith(Mp4Url value, $Res Function(Mp4Url) _then) = _$Mp4UrlCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "quality") Quality quality,@JsonKey(name: "video_url") String videoUrl
});




}
/// @nodoc
class _$Mp4UrlCopyWithImpl<$Res>
    implements $Mp4UrlCopyWith<$Res> {
  _$Mp4UrlCopyWithImpl(this._self, this._then);

  final Mp4Url _self;
  final $Res Function(Mp4Url) _then;

/// Create a copy of Mp4Url
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quality = null,Object? videoUrl = null,}) {
  return _then(_self.copyWith(
quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as Quality,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Mp4Url].
extension Mp4UrlPatterns on Mp4Url {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mp4Url value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mp4Url() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mp4Url value)  $default,){
final _that = this;
switch (_that) {
case _Mp4Url():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mp4Url value)?  $default,){
final _that = this;
switch (_that) {
case _Mp4Url() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "quality")  Quality quality, @JsonKey(name: "video_url")  String videoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mp4Url() when $default != null:
return $default(_that.quality,_that.videoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "quality")  Quality quality, @JsonKey(name: "video_url")  String videoUrl)  $default,) {final _that = this;
switch (_that) {
case _Mp4Url():
return $default(_that.quality,_that.videoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "quality")  Quality quality, @JsonKey(name: "video_url")  String videoUrl)?  $default,) {final _that = this;
switch (_that) {
case _Mp4Url() when $default != null:
return $default(_that.quality,_that.videoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mp4Url implements Mp4Url {
  const _Mp4Url({@JsonKey(name: "quality") required this.quality, @JsonKey(name: "video_url") required this.videoUrl});
  factory _Mp4Url.fromJson(Map<String, dynamic> json) => _$Mp4UrlFromJson(json);

@override@JsonKey(name: "quality") final  Quality quality;
@override@JsonKey(name: "video_url") final  String videoUrl;

/// Create a copy of Mp4Url
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Mp4UrlCopyWith<_Mp4Url> get copyWith => __$Mp4UrlCopyWithImpl<_Mp4Url>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Mp4UrlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mp4Url&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quality,videoUrl);

@override
String toString() {
  return 'Mp4Url(quality: $quality, videoUrl: $videoUrl)';
}


}

/// @nodoc
abstract mixin class _$Mp4UrlCopyWith<$Res> implements $Mp4UrlCopyWith<$Res> {
  factory _$Mp4UrlCopyWith(_Mp4Url value, $Res Function(_Mp4Url) _then) = __$Mp4UrlCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "quality") Quality quality,@JsonKey(name: "video_url") String videoUrl
});




}
/// @nodoc
class __$Mp4UrlCopyWithImpl<$Res>
    implements _$Mp4UrlCopyWith<$Res> {
  __$Mp4UrlCopyWithImpl(this._self, this._then);

  final _Mp4Url _self;
  final $Res Function(_Mp4Url) _then;

/// Create a copy of Mp4Url
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quality = null,Object? videoUrl = null,}) {
  return _then(_Mp4Url(
quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as Quality,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
