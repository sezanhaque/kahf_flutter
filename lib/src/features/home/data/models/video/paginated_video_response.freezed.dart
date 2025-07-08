// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedVideoResponse {

@JsonKey(name: "links") Links get links;@JsonKey(name: "total") int get total;@JsonKey(name: "popular_video_count") int get popularVideoCount;@JsonKey(name: "cache_end_date") DateTime get cacheEndDate;@JsonKey(name: "is_cached_response") bool get isCachedResponse;@JsonKey(name: "page") int get page;@JsonKey(name: "page_size") int get pageSize;@JsonKey(name: "results") List<VideoModel> get results;
/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedVideoResponseCopyWith<PaginatedVideoResponse> get copyWith => _$PaginatedVideoResponseCopyWithImpl<PaginatedVideoResponse>(this as PaginatedVideoResponse, _$identity);

  /// Serializes this PaginatedVideoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedVideoResponse&&(identical(other.links, links) || other.links == links)&&(identical(other.total, total) || other.total == total)&&(identical(other.popularVideoCount, popularVideoCount) || other.popularVideoCount == popularVideoCount)&&(identical(other.cacheEndDate, cacheEndDate) || other.cacheEndDate == cacheEndDate)&&(identical(other.isCachedResponse, isCachedResponse) || other.isCachedResponse == isCachedResponse)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,links,total,popularVideoCount,cacheEndDate,isCachedResponse,page,pageSize,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PaginatedVideoResponse(links: $links, total: $total, popularVideoCount: $popularVideoCount, cacheEndDate: $cacheEndDate, isCachedResponse: $isCachedResponse, page: $page, pageSize: $pageSize, results: $results)';
}


}

/// @nodoc
abstract mixin class $PaginatedVideoResponseCopyWith<$Res>  {
  factory $PaginatedVideoResponseCopyWith(PaginatedVideoResponse value, $Res Function(PaginatedVideoResponse) _then) = _$PaginatedVideoResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "links") Links links,@JsonKey(name: "total") int total,@JsonKey(name: "popular_video_count") int popularVideoCount,@JsonKey(name: "cache_end_date") DateTime cacheEndDate,@JsonKey(name: "is_cached_response") bool isCachedResponse,@JsonKey(name: "page") int page,@JsonKey(name: "page_size") int pageSize,@JsonKey(name: "results") List<VideoModel> results
});


$LinksCopyWith<$Res> get links;

}
/// @nodoc
class _$PaginatedVideoResponseCopyWithImpl<$Res>
    implements $PaginatedVideoResponseCopyWith<$Res> {
  _$PaginatedVideoResponseCopyWithImpl(this._self, this._then);

  final PaginatedVideoResponse _self;
  final $Res Function(PaginatedVideoResponse) _then;

/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? links = null,Object? total = null,Object? popularVideoCount = null,Object? cacheEndDate = null,Object? isCachedResponse = null,Object? page = null,Object? pageSize = null,Object? results = null,}) {
  return _then(_self.copyWith(
links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,popularVideoCount: null == popularVideoCount ? _self.popularVideoCount : popularVideoCount // ignore: cast_nullable_to_non_nullable
as int,cacheEndDate: null == cacheEndDate ? _self.cacheEndDate : cacheEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,isCachedResponse: null == isCachedResponse ? _self.isCachedResponse : isCachedResponse // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<VideoModel>,
  ));
}
/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res> get links {
  
  return $LinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedVideoResponse].
extension PaginatedVideoResponsePatterns on PaginatedVideoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedVideoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedVideoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedVideoResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedVideoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedVideoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedVideoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "links")  Links links, @JsonKey(name: "total")  int total, @JsonKey(name: "popular_video_count")  int popularVideoCount, @JsonKey(name: "cache_end_date")  DateTime cacheEndDate, @JsonKey(name: "is_cached_response")  bool isCachedResponse, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "results")  List<VideoModel> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedVideoResponse() when $default != null:
return $default(_that.links,_that.total,_that.popularVideoCount,_that.cacheEndDate,_that.isCachedResponse,_that.page,_that.pageSize,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "links")  Links links, @JsonKey(name: "total")  int total, @JsonKey(name: "popular_video_count")  int popularVideoCount, @JsonKey(name: "cache_end_date")  DateTime cacheEndDate, @JsonKey(name: "is_cached_response")  bool isCachedResponse, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "results")  List<VideoModel> results)  $default,) {final _that = this;
switch (_that) {
case _PaginatedVideoResponse():
return $default(_that.links,_that.total,_that.popularVideoCount,_that.cacheEndDate,_that.isCachedResponse,_that.page,_that.pageSize,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "links")  Links links, @JsonKey(name: "total")  int total, @JsonKey(name: "popular_video_count")  int popularVideoCount, @JsonKey(name: "cache_end_date")  DateTime cacheEndDate, @JsonKey(name: "is_cached_response")  bool isCachedResponse, @JsonKey(name: "page")  int page, @JsonKey(name: "page_size")  int pageSize, @JsonKey(name: "results")  List<VideoModel> results)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedVideoResponse() when $default != null:
return $default(_that.links,_that.total,_that.popularVideoCount,_that.cacheEndDate,_that.isCachedResponse,_that.page,_that.pageSize,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedVideoResponse implements PaginatedVideoResponse {
  const _PaginatedVideoResponse({@JsonKey(name: "links") required this.links, @JsonKey(name: "total") required this.total, @JsonKey(name: "popular_video_count") required this.popularVideoCount, @JsonKey(name: "cache_end_date") required this.cacheEndDate, @JsonKey(name: "is_cached_response") required this.isCachedResponse, @JsonKey(name: "page") required this.page, @JsonKey(name: "page_size") required this.pageSize, @JsonKey(name: "results") required final  List<VideoModel> results}): _results = results;
  factory _PaginatedVideoResponse.fromJson(Map<String, dynamic> json) => _$PaginatedVideoResponseFromJson(json);

@override@JsonKey(name: "links") final  Links links;
@override@JsonKey(name: "total") final  int total;
@override@JsonKey(name: "popular_video_count") final  int popularVideoCount;
@override@JsonKey(name: "cache_end_date") final  DateTime cacheEndDate;
@override@JsonKey(name: "is_cached_response") final  bool isCachedResponse;
@override@JsonKey(name: "page") final  int page;
@override@JsonKey(name: "page_size") final  int pageSize;
 final  List<VideoModel> _results;
@override@JsonKey(name: "results") List<VideoModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedVideoResponseCopyWith<_PaginatedVideoResponse> get copyWith => __$PaginatedVideoResponseCopyWithImpl<_PaginatedVideoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedVideoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedVideoResponse&&(identical(other.links, links) || other.links == links)&&(identical(other.total, total) || other.total == total)&&(identical(other.popularVideoCount, popularVideoCount) || other.popularVideoCount == popularVideoCount)&&(identical(other.cacheEndDate, cacheEndDate) || other.cacheEndDate == cacheEndDate)&&(identical(other.isCachedResponse, isCachedResponse) || other.isCachedResponse == isCachedResponse)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,links,total,popularVideoCount,cacheEndDate,isCachedResponse,page,pageSize,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PaginatedVideoResponse(links: $links, total: $total, popularVideoCount: $popularVideoCount, cacheEndDate: $cacheEndDate, isCachedResponse: $isCachedResponse, page: $page, pageSize: $pageSize, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PaginatedVideoResponseCopyWith<$Res> implements $PaginatedVideoResponseCopyWith<$Res> {
  factory _$PaginatedVideoResponseCopyWith(_PaginatedVideoResponse value, $Res Function(_PaginatedVideoResponse) _then) = __$PaginatedVideoResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "links") Links links,@JsonKey(name: "total") int total,@JsonKey(name: "popular_video_count") int popularVideoCount,@JsonKey(name: "cache_end_date") DateTime cacheEndDate,@JsonKey(name: "is_cached_response") bool isCachedResponse,@JsonKey(name: "page") int page,@JsonKey(name: "page_size") int pageSize,@JsonKey(name: "results") List<VideoModel> results
});


@override $LinksCopyWith<$Res> get links;

}
/// @nodoc
class __$PaginatedVideoResponseCopyWithImpl<$Res>
    implements _$PaginatedVideoResponseCopyWith<$Res> {
  __$PaginatedVideoResponseCopyWithImpl(this._self, this._then);

  final _PaginatedVideoResponse _self;
  final $Res Function(_PaginatedVideoResponse) _then;

/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? links = null,Object? total = null,Object? popularVideoCount = null,Object? cacheEndDate = null,Object? isCachedResponse = null,Object? page = null,Object? pageSize = null,Object? results = null,}) {
  return _then(_PaginatedVideoResponse(
links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,popularVideoCount: null == popularVideoCount ? _self.popularVideoCount : popularVideoCount // ignore: cast_nullable_to_non_nullable
as int,cacheEndDate: null == cacheEndDate ? _self.cacheEndDate : cacheEndDate // ignore: cast_nullable_to_non_nullable
as DateTime,isCachedResponse: null == isCachedResponse ? _self.isCachedResponse : isCachedResponse // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<VideoModel>,
  ));
}

/// Create a copy of PaginatedVideoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res> get links {
  
  return $LinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
mixin _$Links {

@JsonKey(name: "next") int get next;
/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinksCopyWith<Links> get copyWith => _$LinksCopyWithImpl<Links>(this as Links, _$identity);

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Links&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,next);

@override
String toString() {
  return 'Links(next: $next)';
}


}

/// @nodoc
abstract mixin class $LinksCopyWith<$Res>  {
  factory $LinksCopyWith(Links value, $Res Function(Links) _then) = _$LinksCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "next") int next
});




}
/// @nodoc
class _$LinksCopyWithImpl<$Res>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._self, this._then);

  final Links _self;
  final $Res Function(Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? next = null,}) {
  return _then(_self.copyWith(
next: null == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Links].
extension LinksPatterns on Links {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Links value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Links value)  $default,){
final _that = this;
switch (_that) {
case _Links():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Links value)?  $default,){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "next")  int next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "next")  int next)  $default,) {final _that = this;
switch (_that) {
case _Links():
return $default(_that.next);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "next")  int next)?  $default,) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.next);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Links implements Links {
  const _Links({@JsonKey(name: "next") required this.next});
  factory _Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

@override@JsonKey(name: "next") final  int next;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinksCopyWith<_Links> get copyWith => __$LinksCopyWithImpl<_Links>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Links&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,next);

@override
String toString() {
  return 'Links(next: $next)';
}


}

/// @nodoc
abstract mixin class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) _then) = __$LinksCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "next") int next
});




}
/// @nodoc
class __$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._self, this._then);

  final _Links _self;
  final $Res Function(_Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? next = null,}) {
  return _then(_Links(
next: null == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
