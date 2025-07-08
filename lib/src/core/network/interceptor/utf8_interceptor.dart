import 'dart:convert';
import 'package:dio/dio.dart';

class Utf8Interceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      if (response.requestOptions.responseType == ResponseType.bytes) {
        final String decodedStr = const Utf8Decoder(
          allowMalformed: true,
        ).convert(response.data);

        // final fixedStr = cleanMalformedUtf8(decodedStr);
        final fixedStr = decodedStr.replaceAll('\uFFFD', '').trim();
        final dynamic decodedJson = jsonDecode(fixedStr);

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

// String cleanMalformedUtf8(String input) {
//   return input
//       .replaceAll('\uFFFD', '') // Remove replacement char
//       .replaceAll(
//         RegExp(r'[\u0000-\u001F\u007F-\u009F]'),
//         '',
//       ) // Invisible control chars
//       .trim();
// }

// String cleanMalformedUtf8(String input) {
//   final originalBytes = input.codeUnits;
//   final cleanBytes = <int>[];

//   for (final byte in originalBytes) {
//     if (byte >= 32 && byte <= 126 || byte == 9 || byte == 10 || byte == 13) {
//       cleanBytes.add(byte);
//     } else {
//       // Replace with space or remove
//       cleanBytes.add(32); // Space character
//     }
//   }

//   return String.fromCharCodes(cleanBytes);
// }

// String cleanMalformedUtf8(String input) {
//   try {
//     // First try normal decoding
//     return input;
//   } catch (e) {
//     // Fallback cleaning
//     final buffer = StringBuffer();
//     for (final char in input.runes) {
//       if (char <= 0xFFFF) {
//         // Basic Multilingual Plane
//         buffer.writeCharCode(char);
//       } else {
//         buffer.write('\uFFFD'); // Replacement char for complex chars
//       }
//     }
//     return buffer
//         .toString()
//         .replaceAll('\uFFFD\uFFFD', '\uFFFD') // Consolidate replacements
//         .replaceAll(RegExp(r'[\x00-\x1F\x7F]'), ''); // Remove controls
//   }
// }
