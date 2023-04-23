import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_value.freezed.dart';

@freezed
class StateValue<T> with _$StateValue<T> {
  const StateValue._();

  const factory StateValue.initial() = _Initial<T>;

  const factory StateValue.loading() = _Loading;

  const factory StateValue.success(final T data) = _Success<T>;

  const factory StateValue.failure(final Object error, StackTrace stackTrace) =
      _Failure;

  bool get isInit => maybeWhen(initial: () => true, orElse: () => false);

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isSuccess => maybeMap(success: (_) => true, orElse: () => false);

  bool get isError => maybeWhen(failure: (_, __) => true, orElse: () => false);

  T? get data => maybeWhen(success: (data) => data, orElse: () => null);
}
