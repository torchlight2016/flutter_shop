import 'package:dio/dio.dart';
import 'package:flutter_shop/core/result/api_error.dart';

sealed class ApiResult<S> {
  static Future<ApiResult<S>> wrap<S>(Future<S> Function() future) async {
    try {
      return ApiSuccess(await future().catchError(_handleApiResponse));
    } on ApiError catch (e, st) {
      return ApiFailure(e, st);
    }
  }
}

final class ApiSuccess<S> extends ApiResult<S> {
  final S value;
  ApiSuccess(this.value);
}

final class ApiFailure<S> extends ApiResult<S> {
  final ApiError error;
  StackTrace? stackTrace;

  ApiFailure(this.error, [this.stackTrace]);
}

_handleApiResponse(Object obj) {
  switch (obj.runtimeType) {
    case DioException:
      final dioException = obj as DioException;
      final message = dioException.message ?? '';
      final exceptionType = dioException.type;

      final error = switch (exceptionType) {
        // Caused by a connection timeout.
        DioExceptionType.connectionTimeout => ApiTimeoutError(message),

        // It occurs when url is sent timeout.
        DioExceptionType.sendTimeout => ApiTimeoutError(message),

        // It occurs when receiving timeout.
        DioExceptionType.receiveTimeout => ApiTimeoutError(message),

        // Caused by an incorrect certificate as configured by [ValidateCertificate].
        DioExceptionType.badCertificate => BadCertificationError(message),

        // The [DioException] was caused by an incorrect status code as configured by
        // [ValidateStatus].
        DioExceptionType.badResponse => _handleBadResponse(dioException),

        // When the request is cancelled, dio will throw a error with this type.
        DioExceptionType.cancel => ConnectionError(message),

        // Caused for example by a `xhr.onError` or SocketExceptions.
        DioExceptionType.connectionError => ConnectionError(message),

        // Default error type, Some other [Error]. In this case, you can use the
        // [DioException.error] if it is not null.
        DioExceptionType.unknown => UnknownError(
            dioException.message ?? 'unknown',
            stackTrace: dioException.stackTrace,
          ),
      };
      throw error;
    default:
      StackTrace? stackTrace;
      if (obj is Error) {
        stackTrace = obj.stackTrace;
      }

      throw UnknownError(obj.toString(), error: obj, stackTrace: stackTrace);
  }
}

ApiError _handleBadResponse(DioException dioException) {
  final res = dioException.response;
  final message = dioException.message ?? '';
  final statusCode = res?.statusCode ?? 0;
  final statusMessage = res?.statusMessage ?? '';

  return switch (statusCode) {
    401 => UnauthorizedError(message),
    403 => ForbiddenError(message),
    _ => BadResponseError(
        message,
        statusCode: statusCode,
        statusMessage: statusMessage,
      )
  };
}
