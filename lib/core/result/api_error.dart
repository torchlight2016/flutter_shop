sealed class ApiError {
  final String message;

  ApiError(this.message);
}

final class UnauthorizedError extends ApiError {
  UnauthorizedError(super.message);
}

final class ForbiddenError extends ApiError {
  ForbiddenError(super.message);
}

final class ConnectionError extends ApiError {
  ConnectionError(super.message);
}

final class ApiTimeoutError extends ApiError {
  ApiTimeoutError(super.message);
}

final class BadCertificationError extends ApiError {
  BadCertificationError(super.message);
}

final class BadResponseError extends ApiError {
  final int statusCode;
  final String statusMessage;

  BadResponseError(
    super.message, {
    required this.statusCode,
    required this.statusMessage,
  });
}

final class UnknownError extends ApiError {
  Object? error;
  StackTrace? stackTrace;

  UnknownError(
    super.message, {
    this.error,
    this.stackTrace,
  });
}

final class RequestCanceled extends ApiError {
  RequestCanceled(super.message);
}
