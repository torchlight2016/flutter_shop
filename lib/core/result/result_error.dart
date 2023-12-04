sealed class ResultError {
  final String message;
  StackTrace? stackTrace;

  ResultError({
    required this.message,
    this.stackTrace,
  });
}

final class ParseError extends ResultError {
  ParseError({required super.message});
}

final class UnknownError extends ResultError {
  Object? error;

  UnknownError({
    required super.message,
    super.stackTrace,
    this.error,
  });
}
