import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'endpoints.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl, ParseErrorLogger errorLogger}) =
      _ApiClient;
}
