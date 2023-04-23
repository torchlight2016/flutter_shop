// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookEvent {
  String get name => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? page, int? size) searchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? page, int? size)? searchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? page, int? size)? searchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchBooks value) searchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooks value)? searchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooks value)? searchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookEventCopyWith<BookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
  @useResult
  $Res call({String name, int? page, int? size});
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res, $Val extends BookEvent>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchBooksCopyWith<$Res>
    implements $BookEventCopyWith<$Res> {
  factory _$$_SearchBooksCopyWith(
          _$_SearchBooks value, $Res Function(_$_SearchBooks) then) =
      __$$_SearchBooksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? page, int? size});
}

/// @nodoc
class __$$_SearchBooksCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$_SearchBooks>
    implements _$$_SearchBooksCopyWith<$Res> {
  __$$_SearchBooksCopyWithImpl(
      _$_SearchBooks _value, $Res Function(_$_SearchBooks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_SearchBooks(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SearchBooks implements _SearchBooks {
  const _$_SearchBooks({required this.name, this.page, this.size});

  @override
  final String name;
  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'BookEvent.searchBooks(name: $name, page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchBooks &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchBooksCopyWith<_$_SearchBooks> get copyWith =>
      __$$_SearchBooksCopyWithImpl<_$_SearchBooks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int? page, int? size) searchBooks,
  }) {
    return searchBooks(name, page, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int? page, int? size)? searchBooks,
  }) {
    return searchBooks?.call(name, page, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int? page, int? size)? searchBooks,
    required TResult orElse(),
  }) {
    if (searchBooks != null) {
      return searchBooks(name, page, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchBooks value) searchBooks,
  }) {
    return searchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooks value)? searchBooks,
  }) {
    return searchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooks value)? searchBooks,
    required TResult orElse(),
  }) {
    if (searchBooks != null) {
      return searchBooks(this);
    }
    return orElse();
  }
}

abstract class _SearchBooks implements BookEvent {
  const factory _SearchBooks(
      {required final String name,
      final int? page,
      final int? size}) = _$_SearchBooks;

  @override
  String get name;
  @override
  int? get page;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$_SearchBooksCopyWith<_$_SearchBooks> get copyWith =>
      throw _privateConstructorUsedError;
}
