// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoState()';
}


}

/// @nodoc
class $VideoStateCopyWith<$Res>  {
$VideoStateCopyWith(VideoState _, $Res Function(VideoState) __);
}


/// Adds pattern-matching-related methods to [VideoState].
extension VideoStatePatterns on VideoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VideoStateInitial value)?  initial,TResult Function( VideoStateLoading value)?  loading,TResult Function( VideoStateSuccess value)?  success,TResult Function( VideoStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VideoStateInitial() when initial != null:
return initial(_that);case VideoStateLoading() when loading != null:
return loading(_that);case VideoStateSuccess() when success != null:
return success(_that);case VideoStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VideoStateInitial value)  initial,required TResult Function( VideoStateLoading value)  loading,required TResult Function( VideoStateSuccess value)  success,required TResult Function( VideoStateError value)  error,}){
final _that = this;
switch (_that) {
case VideoStateInitial():
return initial(_that);case VideoStateLoading():
return loading(_that);case VideoStateSuccess():
return success(_that);case VideoStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VideoStateInitial value)?  initial,TResult? Function( VideoStateLoading value)?  loading,TResult? Function( VideoStateSuccess value)?  success,TResult? Function( VideoStateError value)?  error,}){
final _that = this;
switch (_that) {
case VideoStateInitial() when initial != null:
return initial(_that);case VideoStateLoading() when loading != null:
return loading(_that);case VideoStateSuccess() when success != null:
return success(_that);case VideoStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<VideoEntity> videos,  int currentPage,  int totalVideos,  bool hasMore,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VideoStateInitial() when initial != null:
return initial();case VideoStateLoading() when loading != null:
return loading();case VideoStateSuccess() when success != null:
return success(_that.videos,_that.currentPage,_that.totalVideos,_that.hasMore,_that.isLoadingMore);case VideoStateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<VideoEntity> videos,  int currentPage,  int totalVideos,  bool hasMore,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case VideoStateInitial():
return initial();case VideoStateLoading():
return loading();case VideoStateSuccess():
return success(_that.videos,_that.currentPage,_that.totalVideos,_that.hasMore,_that.isLoadingMore);case VideoStateError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<VideoEntity> videos,  int currentPage,  int totalVideos,  bool hasMore,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case VideoStateInitial() when initial != null:
return initial();case VideoStateLoading() when loading != null:
return loading();case VideoStateSuccess() when success != null:
return success(_that.videos,_that.currentPage,_that.totalVideos,_that.hasMore,_that.isLoadingMore);case VideoStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class VideoStateInitial implements VideoState {
  const VideoStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoState.initial()';
}


}




/// @nodoc


class VideoStateLoading implements VideoState {
  const VideoStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoState.loading()';
}


}




/// @nodoc


class VideoStateSuccess implements VideoState {
  const VideoStateSuccess({required final  List<VideoEntity> videos, required this.currentPage, required this.totalVideos, required this.hasMore, this.isLoadingMore = false}): _videos = videos;
  

 final  List<VideoEntity> _videos;
 List<VideoEntity> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

 final  int currentPage;
 final  int totalVideos;
 final  bool hasMore;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStateSuccessCopyWith<VideoStateSuccess> get copyWith => _$VideoStateSuccessCopyWithImpl<VideoStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStateSuccess&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalVideos, totalVideos) || other.totalVideos == totalVideos)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videos),currentPage,totalVideos,hasMore,isLoadingMore);

@override
String toString() {
  return 'VideoState.success(videos: $videos, currentPage: $currentPage, totalVideos: $totalVideos, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $VideoStateSuccessCopyWith<$Res> implements $VideoStateCopyWith<$Res> {
  factory $VideoStateSuccessCopyWith(VideoStateSuccess value, $Res Function(VideoStateSuccess) _then) = _$VideoStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<VideoEntity> videos, int currentPage, int totalVideos, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class _$VideoStateSuccessCopyWithImpl<$Res>
    implements $VideoStateSuccessCopyWith<$Res> {
  _$VideoStateSuccessCopyWithImpl(this._self, this._then);

  final VideoStateSuccess _self;
  final $Res Function(VideoStateSuccess) _then;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? videos = null,Object? currentPage = null,Object? totalVideos = null,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(VideoStateSuccess(
videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<VideoEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalVideos: null == totalVideos ? _self.totalVideos : totalVideos // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class VideoStateError implements VideoState {
  const VideoStateError(this.message);
  

 final  String message;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoStateErrorCopyWith<VideoStateError> get copyWith => _$VideoStateErrorCopyWithImpl<VideoStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VideoState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VideoStateErrorCopyWith<$Res> implements $VideoStateCopyWith<$Res> {
  factory $VideoStateErrorCopyWith(VideoStateError value, $Res Function(VideoStateError) _then) = _$VideoStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$VideoStateErrorCopyWithImpl<$Res>
    implements $VideoStateErrorCopyWith<$Res> {
  _$VideoStateErrorCopyWithImpl(this._self, this._then);

  final VideoStateError _self;
  final $Res Function(VideoStateError) _then;

/// Create a copy of VideoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VideoStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
