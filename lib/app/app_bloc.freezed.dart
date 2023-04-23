// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  ColorSeed? get colorSeed => throw _privateConstructorUsedError;
  Brightness? get brightness => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed? colorSeed, Brightness? brightness)
        changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed? colorSeed, Brightness? brightness)?
        changeSeedColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed? colorSeed, Brightness? brightness)?
        changeSeedColor,
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
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
  @useResult
  $Res call({ColorSeed? colorSeed, Brightness? brightness});
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_value.copyWith(
      colorSeed: freezed == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed?,
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeSeedColorCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$$_ChangeSeedColorCopyWith(
          _$_ChangeSeedColor value, $Res Function(_$_ChangeSeedColor) then) =
      __$$_ChangeSeedColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorSeed? colorSeed, Brightness? brightness});
}

/// @nodoc
class __$$_ChangeSeedColorCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ChangeSeedColor>
    implements _$$_ChangeSeedColorCopyWith<$Res> {
  __$$_ChangeSeedColorCopyWithImpl(
      _$_ChangeSeedColor _value, $Res Function(_$_ChangeSeedColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = freezed,
    Object? brightness = freezed,
  }) {
    return _then(_$_ChangeSeedColor(
      colorSeed: freezed == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed?,
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ));
  }
}

/// @nodoc

class _$_ChangeSeedColor implements _ChangeSeedColor {
  const _$_ChangeSeedColor({this.colorSeed, this.brightness});

  @override
  final ColorSeed? colorSeed;
  @override
  final Brightness? brightness;

  @override
  String toString() {
    return 'AppEvent.changeSeedColor(colorSeed: $colorSeed, brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSeedColor &&
            (identical(other.colorSeed, colorSeed) ||
                other.colorSeed == colorSeed) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorSeed, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSeedColorCopyWith<_$_ChangeSeedColor> get copyWith =>
      __$$_ChangeSeedColorCopyWithImpl<_$_ChangeSeedColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed? colorSeed, Brightness? brightness)
        changeSeedColor,
  }) {
    return changeSeedColor(colorSeed, brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed? colorSeed, Brightness? brightness)?
        changeSeedColor,
  }) {
    return changeSeedColor?.call(colorSeed, brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed? colorSeed, Brightness? brightness)?
        changeSeedColor,
    required TResult orElse(),
  }) {
    if (changeSeedColor != null) {
      return changeSeedColor(colorSeed, brightness);
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

abstract class _ChangeSeedColor implements AppEvent {
  const factory _ChangeSeedColor(
      {final ColorSeed? colorSeed,
      final Brightness? brightness}) = _$_ChangeSeedColor;

  @override
  ColorSeed? get colorSeed;
  @override
  Brightness? get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeSeedColorCopyWith<_$_ChangeSeedColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  ColorSeed get colorSeed => throw _privateConstructorUsedError;
  Brightness get brightness => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed colorSeed, Brightness brightness)
        seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed colorSeed, Brightness brightness)?
        seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed colorSeed, Brightness brightness)?
        seedColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeedColorChanged value) seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeedColorChanged value)? seedColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeedColorChanged value)? seedColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({ColorSeed colorSeed, Brightness brightness});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = null,
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      colorSeed: null == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeedColorChangedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$_SeedColorChangedCopyWith(
          _$_SeedColorChanged value, $Res Function(_$_SeedColorChanged) then) =
      __$$_SeedColorChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorSeed colorSeed, Brightness brightness});
}

/// @nodoc
class __$$_SeedColorChangedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_SeedColorChanged>
    implements _$$_SeedColorChangedCopyWith<$Res> {
  __$$_SeedColorChangedCopyWithImpl(
      _$_SeedColorChanged _value, $Res Function(_$_SeedColorChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorSeed = null,
    Object? brightness = null,
  }) {
    return _then(_$_SeedColorChanged(
      colorSeed: null == colorSeed
          ? _value.colorSeed
          : colorSeed // ignore: cast_nullable_to_non_nullable
              as ColorSeed,
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$_SeedColorChanged implements _SeedColorChanged {
  const _$_SeedColorChanged(
      {required this.colorSeed, required this.brightness});

  @override
  final ColorSeed colorSeed;
  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'AppState.seedColorChanged(colorSeed: $colorSeed, brightness: $brightness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeedColorChanged &&
            (identical(other.colorSeed, colorSeed) ||
                other.colorSeed == colorSeed) &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorSeed, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeedColorChangedCopyWith<_$_SeedColorChanged> get copyWith =>
      __$$_SeedColorChangedCopyWithImpl<_$_SeedColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorSeed colorSeed, Brightness brightness)
        seedColorChanged,
  }) {
    return seedColorChanged(colorSeed, brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorSeed colorSeed, Brightness brightness)?
        seedColorChanged,
  }) {
    return seedColorChanged?.call(colorSeed, brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorSeed colorSeed, Brightness brightness)?
        seedColorChanged,
    required TResult orElse(),
  }) {
    if (seedColorChanged != null) {
      return seedColorChanged(colorSeed, brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeedColorChanged value) seedColorChanged,
  }) {
    return seedColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeedColorChanged value)? seedColorChanged,
  }) {
    return seedColorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeedColorChanged value)? seedColorChanged,
    required TResult orElse(),
  }) {
    if (seedColorChanged != null) {
      return seedColorChanged(this);
    }
    return orElse();
  }
}

abstract class _SeedColorChanged implements AppState {
  const factory _SeedColorChanged(
      {required final ColorSeed colorSeed,
      required final Brightness brightness}) = _$_SeedColorChanged;

  @override
  ColorSeed get colorSeed;
  @override
  Brightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$_SeedColorChangedCopyWith<_$_SeedColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
