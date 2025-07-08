import 'package:kahf_flutter/src/core/base/failure.dart';
import 'package:kahf_flutter/src/core/base/response_result.dart';
import 'package:kahf_flutter/src/core/logger/log.dart';

abstract base class BaseRepository<T> {
  Future<T> request(
    Future<dynamic> Function() request, {
    Function(String?, {String? code}) onError = _defaultErrorHandler,
  }) async {
    try {
      return await request();
    } catch (e, stackTrace) {
      Log.error(e.toString());
      Log.error(stackTrace.toString());
      return onError.call("Something went wrong!");
    }
  }

  Future<ResponseResult<T, Failure>> asyncRequest<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final T result = await operation();

      return Success(result);
    } on Exception catch (e) {
      return Error(Failure.mapExceptionToFailure(e));
    }
  }

  static Future _defaultErrorHandler(String? message, {String? code}) {
    return Future.error(message as Object);
  }
}
