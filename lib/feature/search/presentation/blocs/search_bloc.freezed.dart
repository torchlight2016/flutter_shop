// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookKeywords,
    required TResult Function(String keyword) addBookKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBookKeywords,
    TResult? Function(String keyword)? addBookKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookKeywords,
    TResult Function(String keyword)? addBookKeyword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookKeyWords value) getBookKeywords,
    required TResult Function(_AddBookKeyword value) addBookKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBookKeyWords value)? getBookKeywords,
    TResult? Function(_AddBookKeyword value)? addBookKeyword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookKeyWords value)? getBookKeywords,
    TResult Function(_AddBookKeyword value)? addBookKeyword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetBookKeyWordsCopyWith<$Res> {
  factory _$$_GetBookKeyWordsCopyWith(
          _$_GetBookKeyWords value, $Res Function(_$_GetBookKeyWords) then) =
      __$$_GetBookKeyWordsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBookKeyWordsCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_GetBookKeyWords>
    implements _$$_GetBookKeyWordsCopyWith<$Res> {
  __$$_GetBookKeyWordsCopyWithImpl(
      _$_GetBookKeyWords _value, $Res Function(_$_GetBookKeyWords) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBookKeyWords implements _GetBookKeyWords {
  const _$_GetBookKeyWords();

  @override
  String toString() {
    return 'SearchEvent.getBookKeywords()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBookKeyWords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookKeywords,
    required TResult Function(String keyword) addBookKeyword,
  }) {
    return getBookKeywords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBookKeywords,
    TResult? Function(String keyword)? addBookKeyword,
  }) {
    return getBookKeywords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookKeywords,
    TResult Function(String keyword)? addBookKeyword,
    required TResult orElse(),
  }) {
    if (getBookKeywords != null) {
      return getBookKeywords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookKeyWords value) getBookKeywords,
    required TResult Function(_AddBookKeyword value) addBookKeyword,
  }) {
    return getBookKeywords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBookKeyWords value)? getBookKeywords,
    TResult? Function(_AddBookKeyword value)? addBookKeyword,
  }) {
    return getBookKeywords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookKeyWords value)? getBookKeywords,
    TResult Function(_AddBookKeyword value)? addBookKeyword,
    required TResult orElse(),
  }) {
    if (getBookKeywords != null) {
      return getBookKeywords(this);
    }
    return orElse();
  }
}

abstract class _GetBookKeyWords implements SearchEvent {
  const factory _GetBookKeyWords() = _$_GetBookKeyWords;
}

/// @nodoc
abstract class _$$_AddBookKeywordCopyWith<$Res> {
  factory _$$_AddBookKeywordCopyWith(
          _$_AddBookKeyword value, $Res Function(_$_AddBookKeyword) then) =
      __$$_AddBookKeywordCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$_AddBookKeywordCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_AddBookKeyword>
    implements _$$_AddBookKeywordCopyWith<$Res> {
  __$$_AddBookKeywordCopyWithImpl(
      _$_AddBookKeyword _value, $Res Function(_$_AddBookKeyword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_AddBookKeyword(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddBookKeyword implements _AddBookKeyword {
  const _$_AddBookKeyword(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchEvent.addBookKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBookKeyword &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBookKeywordCopyWith<_$_AddBookKeyword> get copyWith =>
      __$$_AddBookKeywordCopyWithImpl<_$_AddBookKeyword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookKeywords,
    required TResult Function(String keyword) addBookKeyword,
  }) {
    return addBookKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBookKeywords,
    TResult? Function(String keyword)? addBookKeyword,
  }) {
    return addBookKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookKeywords,
    TResult Function(String keyword)? addBookKeyword,
    required TResult orElse(),
  }) {
    if (addBookKeyword != null) {
      return addBookKeyword(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBookKeyWords value) getBookKeywords,
    required TResult Function(_AddBookKeyword value) addBookKeyword,
  }) {
    return addBookKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBookKeyWords value)? getBookKeywords,
    TResult? Function(_AddBookKeyword value)? addBookKeyword,
  }) {
    return addBookKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBookKeyWords value)? getBookKeywords,
    TResult Function(_AddBookKeyword value)? addBookKeyword,
    required TResult orElse(),
  }) {
    if (addBookKeyword != null) {
      return addBookKeyword(this);
    }
    return orElse();
  }
}

abstract class _AddBookKeyword implements SearchEvent {
  const factory _AddBookKeyword(final String keyword) = _$_AddBookKeyword;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_AddBookKeywordCopyWith<_$_AddBookKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}
