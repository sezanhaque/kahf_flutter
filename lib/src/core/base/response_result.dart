import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_result.freezed.dart';

@freezed
class ResponseResult<T, E> with _$ResponseResult<T, E> {
  const factory ResponseResult.success(T data) = Success;
  const factory ResponseResult.error(E error) = Error;
}
