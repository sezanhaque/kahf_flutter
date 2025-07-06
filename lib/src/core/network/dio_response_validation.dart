import 'package:dio/dio.dart';

import '../exceptions/app_exceptions.dart';

class DioResponseValidator {
  static void validateResponse(Response response) {
    if (response.statusCode != 200) {
      throw ServerException(
        'Server returned status code ${response.statusCode}',
        statusCode: response.statusCode,
      );
    }

    if (response.data == null) {
      throw ServerException('Response data is null');
    }
  }
}
