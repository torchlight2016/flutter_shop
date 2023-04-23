// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  ColorSeed get colorSeed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed colorSeed) changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed colorSeed)? changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed colorSeed)? changeSeedColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSeedColor value) changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSeedColor value)? changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSeedColor value)? changeSeedColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainEventCopyWith<MainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
  @useResult
  $Res call({ColorSeed colorSeed});
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = null,
  }) {
    return _then(_value.copyWith(
      colorSeed: null == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeSeedColorCopyWith<$Res>
    implements $MainEventCopyWith<$Res> {
  factory _$$_ChangeSeedColorCopyWith(
          _$_ChangeSeedColor value, $Res Function(_$_ChangeSeedColor) then) =
      __$$_ChangeSeedColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorSeed colorSeed});
}

/// @nodoc
class __$$_ChangeSeedColorCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_ChangeSeedColor>
    implements _$$_ChangeSeedColorCopyWith<$Res> {
  __$$_ChangeSeedColorCopyWithImpl(
      _$_ChangeSeedColor _value, $Res Function(_$_ChangeSeedColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = null,
  }) {
    return _then(_$_ChangeSeedColor(
      colorSeed: null == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
    ));
  }
}

/// @nodoc

class _$_ChangeSeedColor implements _ChangeSeedColor {
  const _$_ChangeSeedColor({required this.colorSeed});

  @override
  final ColorSeed colorSeed;

  @override
  String toString() {
    return 'MainEvent.changeSeedColor(colorSeed: $colorSeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSeedColor &&
            (identical(other.colorSeed, colorSeed) ||
                other.colorSeed == colorSeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorSeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSeedColorCopyWith<_$_ChangeSeedColor> get copyWith =>
      __$$_ChangeSeedColorCopyWithImpl<_$_ChangeSeedColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed colorSeed) changeSeedColor,
  }) {
    return changeSeedColor(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed colorSeed)? changeSeedColor,
  }) {
    return changeSeedColor?.call(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed colorSeed)? changeSeedColor,
    required TResult orElse(),
  }) {
    if (changeSeedColor != null) {
      return changeSeedColor(colorSeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSeedColor value) changeSeedColor,
  }) {
    return changeSeedColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeSeedColor value)? changeSeedColor,
  }) {
    return changeSeedColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSeedColor value)? changeSeedColor,
    required TResult orElse(),
  }) {
    if (changeSeedColor != null) {
      return changeSeedColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeSeedColor implements MainEvent {
  const factory _ChangeSeedColor({required final ColorSeed colorSeed}) =
      _$_ChangeSeedColor;

  @override
  ColorSeed get colorSeed;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeSeedColorCopyWith<_$_ChangeSeedColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ColorSeed colorSeed) seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ColorSeed colorSeed)? seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ColorSeed colorSeed)? seedColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SeedColorChanged value) seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SeedColorChanged value)? seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SeedColorChanged value)? seedColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ColorSeed colorSeed) seedColorChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ColorSeed colorSeed)? seedColorChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ColorSeed colorSeed)? seedColorChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SeedColorChanged value) seedColorChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SeedColorChanged value)? seedColorChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SeedColorChanged value)? seedColorChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SeedColorChangedCopyWith<$Res> {
  factory _$$_SeedColorChangedCopyWith(
          _$_SeedColorChanged value, $Res Function(_$_SeedColorChanged) then) =
      __$$_SeedColorChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ColorSeed colorSeed});
}

/// @nodoc
class __$$_SeedColorChangedCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_SeedColorChanged>
    implements _$$_SeedColorChangedCopyWith<$Res> {
  __$$_SeedColorChangedCopyWithImpl(
      _$_SeedColorChanged _value, $Res Function(_$_SeedColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = null,
  }) {
    return _then(_$_SeedColorChanged(
      null == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
    ));
  }
}

/// @nodoc

class _$_SeedColorChanged implements _SeedColorChanged {
  const _$_SeedColorChanged(this.colorSeed);

  @override
  final ColorSeed colorSeed;

  @override
  String toString() {
    return 'MainState.seedColorChanged(colorSeed: $colorSeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeedColorChanged &&
            (identical(other.colorSeed, colorSeed) ||
                other.colorSeed == colorSeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorSeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeedColorChangedCopyWith<_$_SeedColorChanged> get copyWith =>
      __$$_SeedColorChangedCopyWithImpl<_$_SeedColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ColorSeed colorSeed) seedColorChanged,
  }) {
    return seedColorChanged(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ColorSeed colorSeed)? seedColorChanged,
  }) {
    return seedColorChanged?.call(colorSeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ColorSeed colorSeed)? seedColorChanged,
    required TResult orElse(),
  }) {
    if (seedColorChanged != null) {
      return seedColorChanged(colorSeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SeedColorChanged value) seedColorChanged,
  }) {
    return seedColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SeedColorChanged value)? seedColorChanged,
  }) {
    return seedColorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SeedColorChanged value)? seedColorChanged,
    required TResult orElse(),
  }) {
    if (seedColorChanged != null) {
      return seedColorChanged(this);
    }
    return orElse();
  }
}

abstract class _SeedColorChanged implements MainState {
  const factory _SeedColorChanged(final ColorSeed colorSeed) =
      _$_SeedColorChanged;

  ColorSeed get colorSeed;
  @JsonKey(ignore: true)
  _$$_SeedColorChangedCopyWith<_$_SeedColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
