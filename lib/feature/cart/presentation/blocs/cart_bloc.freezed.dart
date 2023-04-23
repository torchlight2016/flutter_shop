// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooksFromCart,
    required TResult Function(Book book) addBookToCart,
    required TResult Function(Book book) removeBookFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooksFromCart,
    TResult? Function(Book book)? addBookToCart,
    TResult? Function(Book book)? removeBookFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooksFromCart,
    TResult Function(Book book)? addBookToCart,
    TResult Function(Book book)? removeBookFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooksFromCart value) getBooksFromCart,
    required TResult Function(_AddBookToCart value) addBookToCart,
    required TResult Function(_RemoveBookToCart value) removeBookFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult? Function(_AddBookToCart value)? addBookToCart,
    TResult? Function(_RemoveBookToCart value)? removeBookFromCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult Function(_AddBookToCart value)? addBookToCart,
    TResult Function(_RemoveBookToCart value)? removeBookFromCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetBooksFromCartCopyWith<$Res> {
  factory _$$_GetBooksFromCartCopyWith(
          _$_GetBooksFromCart value, $Res Function(_$_GetBooksFromCart) then) =
      __$$_GetBooksFromCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBooksFromCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetBooksFromCart>
    implements _$$_GetBooksFromCartCopyWith<$Res> {
  __$$_GetBooksFromCartCopyWithImpl(
      _$_GetBooksFromCart _value, $Res Function(_$_GetBooksFromCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBooksFromCart implements _GetBooksFromCart {
  const _$_GetBooksFromCart();

  @override
  String toString() {
    return 'CartEvent.getBooksFromCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBooksFromCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooksFromCart,
    required TResult Function(Book book) addBookToCart,
    required TResult Function(Book book) removeBookFromCart,
  }) {
    return getBooksFromCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooksFromCart,
    TResult? Function(Book book)? addBookToCart,
    TResult? Function(Book book)? removeBookFromCart,
  }) {
    return getBooksFromCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooksFromCart,
    TResult Function(Book book)? addBookToCart,
    TResult Function(Book book)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (getBooksFromCart != null) {
      return getBooksFromCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooksFromCart value) getBooksFromCart,
    required TResult Function(_AddBookToCart value) addBookToCart,
    required TResult Function(_RemoveBookToCart value) removeBookFromCart,
  }) {
    return getBooksFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult? Function(_AddBookToCart value)? addBookToCart,
    TResult? Function(_RemoveBookToCart value)? removeBookFromCart,
  }) {
    return getBooksFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult Function(_AddBookToCart value)? addBookToCart,
    TResult Function(_RemoveBookToCart value)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (getBooksFromCart != null) {
      return getBooksFromCart(this);
    }
    return orElse();
  }
}

abstract class _GetBooksFromCart implements CartEvent {
  const factory _GetBooksFromCart() = _$_GetBooksFromCart;
}

/// @nodoc
abstract class _$$_AddBookToCartCopyWith<$Res> {
  factory _$$_AddBookToCartCopyWith(
          _$_AddBookToCart value, $Res Function(_$_AddBookToCart) then) =
      __$$_AddBookToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$_AddBookToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddBookToCart>
    implements _$$_AddBookToCartCopyWith<$Res> {
  __$$_AddBookToCartCopyWithImpl(
      _$_AddBookToCart _value, $Res Function(_$_AddBookToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_AddBookToCart(
      null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_AddBookToCart implements _AddBookToCart {
  const _$_AddBookToCart(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'CartEvent.addBookToCart(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBookToCart &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBookToCartCopyWith<_$_AddBookToCart> get copyWith =>
      __$$_AddBookToCartCopyWithImpl<_$_AddBookToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooksFromCart,
    required TResult Function(Book book) addBookToCart,
    required TResult Function(Book book) removeBookFromCart,
  }) {
    return addBookToCart(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooksFromCart,
    TResult? Function(Book book)? addBookToCart,
    TResult? Function(Book book)? removeBookFromCart,
  }) {
    return addBookToCart?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooksFromCart,
    TResult Function(Book book)? addBookToCart,
    TResult Function(Book book)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (addBookToCart != null) {
      return addBookToCart(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooksFromCart value) getBooksFromCart,
    required TResult Function(_AddBookToCart value) addBookToCart,
    required TResult Function(_RemoveBookToCart value) removeBookFromCart,
  }) {
    return addBookToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult? Function(_AddBookToCart value)? addBookToCart,
    TResult? Function(_RemoveBookToCart value)? removeBookFromCart,
  }) {
    return addBookToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult Function(_AddBookToCart value)? addBookToCart,
    TResult Function(_RemoveBookToCart value)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (addBookToCart != null) {
      return addBookToCart(this);
    }
    return orElse();
  }
}

abstract class _AddBookToCart implements CartEvent {
  const factory _AddBookToCart(final Book book) = _$_AddBookToCart;

  Book get book;
  @JsonKey(ignore: true)
  _$$_AddBookToCartCopyWith<_$_AddBookToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveBookToCartCopyWith<$Res> {
  factory _$$_RemoveBookToCartCopyWith(
          _$_RemoveBookToCart value, $Res Function(_$_RemoveBookToCart) then) =
      __$$_RemoveBookToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$_RemoveBookToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemoveBookToCart>
    implements _$$_RemoveBookToCartCopyWith<$Res> {
  __$$_RemoveBookToCartCopyWithImpl(
      _$_RemoveBookToCart _value, $Res Function(_$_RemoveBookToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_RemoveBookToCart(
      null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_RemoveBookToCart implements _RemoveBookToCart {
  const _$_RemoveBookToCart(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'CartEvent.removeBookFromCart(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveBookToCart &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveBookToCartCopyWith<_$_RemoveBookToCart> get copyWith =>
      __$$_RemoveBookToCartCopyWithImpl<_$_RemoveBookToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooksFromCart,
    required TResult Function(Book book) addBookToCart,
    required TResult Function(Book book) removeBookFromCart,
  }) {
    return removeBookFromCart(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooksFromCart,
    TResult? Function(Book book)? addBookToCart,
    TResult? Function(Book book)? removeBookFromCart,
  }) {
    return removeBookFromCart?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooksFromCart,
    TResult Function(Book book)? addBookToCart,
    TResult Function(Book book)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (removeBookFromCart != null) {
      return removeBookFromCart(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooksFromCart value) getBooksFromCart,
    required TResult Function(_AddBookToCart value) addBookToCart,
    required TResult Function(_RemoveBookToCart value) removeBookFromCart,
  }) {
    return removeBookFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult? Function(_AddBookToCart value)? addBookToCart,
    TResult? Function(_RemoveBookToCart value)? removeBookFromCart,
  }) {
    return removeBookFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooksFromCart value)? getBooksFromCart,
    TResult Function(_AddBookToCart value)? addBookToCart,
    TResult Function(_RemoveBookToCart value)? removeBookFromCart,
    required TResult orElse(),
  }) {
    if (removeBookFromCart != null) {
      return removeBookFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveBookToCart implements CartEvent {
  const factory _RemoveBookToCart(final Book book) = _$_RemoveBookToCart;

  Book get book;
  @JsonKey(ignore: true)
  _$$_RemoveBookToCartCopyWith<_$_RemoveBookToCart> get copyWith =>
      throw _privateConstructorUsedError;
}
