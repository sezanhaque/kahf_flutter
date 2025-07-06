import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kahf_flutter/src/core/base/exceptions.dart';

import '../logger/log.dart';

part 'failure.freezed.dart';

enum FailureType {
  timeout,
  badResponse,
  badCertificate,
  network,
  parsing,
  validation,
  illegalOperation,
  notFound,
  unauthorized,
  unknown,
}

@freezed
abstract class Failure with _$Failure {
  const factory Failure({
    required FailureType type,
    required String message,
    String? code,
    StackTrace? stackTrace,
  }) = _Failure;

  factory Failure.mapExceptionToFailure(Exception exception) {
    if (exception is DioException) {
      ({String code, String message})? error = _parseError(exception.response);

      return switch (exception.type) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.receiveTimeout ||
        DioExceptionType.sendTimeout => Failure(
          type: FailureType.timeout,
          message: error?.message ?? exception.toString(),
          code: error?.code,
          stackTrace: exception.stackTrace,
        ),

        DioExceptionType.badResponse => Failure(
          type: FailureType.badResponse,
          message: error?.message ?? exception.toString(),
          code: error?.code,
          stackTrace: exception.stackTrace,
        ),

        DioExceptionType.badCertificate => Failure(
          type: FailureType.badCertificate,
          message: error?.message ?? exception.toString(),
          code: error?.code,
          stackTrace: exception.stackTrace,
        ),

        DioExceptionType.connectionError => Failure(
          type: FailureType.network,
          message: error?.message ?? exception.toString(),
          code: error?.code,
          stackTrace: exception.stackTrace,
        ),

        _ => Failure(
          type: FailureType.unknown,
          message: error?.message ?? exception.toString(),
          code: error?.code,
          stackTrace: exception.stackTrace,
        ),
      };
    }

    if (exception is CustomException) {
      final CustomException e = exception as CustomException;

      return switch (e) {
        ParsingException() => Failure(
          type: FailureType.parsing,
          message: e.message,
          stackTrace: e.stackTrace,
        ),

        ValidationException() => Failure(
          type: FailureType.validation,
          message: e.message,
          stackTrace: e.stackTrace,
        ),

        IllegalOperationException() => Failure(
          type: FailureType.illegalOperation,
          message: e.message,
          stackTrace: e.stackTrace,
        ),

        NotFoundException() => Failure(
          type: FailureType.notFound,
          message: e.message,
          stackTrace: e.stackTrace,
        ),

        UnauthorizedException() => Failure(
          type: FailureType.unauthorized,
          message: e.message,
          stackTrace: e.stackTrace,
        ),

        _ => Failure(
          type: FailureType.unknown,
          message: e.message,
          stackTrace: e.stackTrace,
        ),
      };
    }

    return Failure(type: FailureType.unknown, message: exception.toString());
  }

  static ({String message, String code})? _parseError(Response? response) {
    if (response == null) {
      return null;
    }

    try {
      if (response.data is Map<String, dynamic>) {
        final errorMap = (response.data as Map<String, dynamic>);

        return (
          message: errorMap['message'],
          code: response.statusCode.toString(),
        );
      }
    } catch (e, stackTrace) {
      Log.error(e.toString());
      Log.error(stackTrace.toString());

      return null;
    }
    return null;
  }
}
