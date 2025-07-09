part of '../dependency_injection.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final Dio dio = Dio();

  dio.options = BaseOptions(
    baseUrl: ApiEndpoints.baseUrl,
    responseType: ResponseType.bytes,
    connectTimeout: Duration(seconds: 60),
    headers: {"Content-type": "application/json"},
  );

  dio.interceptors.addAll([
    Utf8Interceptor(),
    if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
  ]);

  return dio;
}

String cleanMalformedUtf8(String input) {
  final originalBytes = input.codeUnits;
  final cleanBytes = <int>[];

  for (final byte in originalBytes) {
    if (byte >= 32 && byte <= 126 || byte == 9 || byte == 10 || byte == 13) {
      cleanBytes.add(byte);
    } else {
      // Replace with space or remove
      cleanBytes.add(32); // Space character
    }
  }

  return String.fromCharCodes(cleanBytes);
}
