part of '../dependency_injection.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final Dio dio = Dio();

  dio.options = BaseOptions(
    baseUrl: Endpoints.baseUrl,
    connectTimeout: Duration(seconds: 60),
    headers: {
      "Content-type": "application/json"
    }
  );

  dio.interceptors.addAll([
    ExceptionHandlerInterceptor(),
    if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
  ]);

  return dio;
}

