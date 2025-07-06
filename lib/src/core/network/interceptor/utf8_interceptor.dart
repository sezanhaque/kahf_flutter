import 'dart:convert';
import 'package:dio/dio.dart';

class Utf8Interceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      if (response.requestOptions.responseType == ResponseType.bytes) {
        final decodedStr = const Utf8Decoder(
          allowMalformed: true,
        ).convert(response.data);

        final dynamic decodedJson = jsonDecode(decodedStr);

        final fixedResponse = Response(
          data: decodedJson,
          statusCode: response.statusCode,
          statusMessage: response.statusMessage,
          headers: response.headers,
          isRedirect: response.isRedirect,
          redirects: response.redirects,
          requestOptions: response.requestOptions,
          extra: response.extra,
        );

        handler.next(fixedResponse);
      } else {
        handler.next(response);
      }
    } catch (e) {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: 'UTF-8 Interceptor failed: $e',
          type: DioExceptionType.badResponse,
          response: response,
        ),
      );
    }
  }
}
