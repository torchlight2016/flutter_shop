import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _Success;
  const factory Result.failure(Object error, StackTrace stackTrace) = _Failure;

  static Future<Result<T>> wrap<T>(Future<T> Function() future) async {
    try {
      return Result.success(await future());
    } catch (error, stackTrace) {
      return Result.failure(error, stackTrace);
    }
  }
}
