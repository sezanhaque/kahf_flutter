class AppException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic error;

  AppException(this.message, {this.statusCode, this.error});

  @override
  String toString() =>
      'AppException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}

class NetworkException extends AppException {
  NetworkException(super.message, {super.error});
}

class ServerException extends AppException {
  ServerException(super.message, {super.statusCode, super.error});
}

class CacheException extends AppException {
  CacheException(super.message, {super.error});
}

class DataParsingException extends AppException {
  DataParsingException(super.message, {super.error});
}
