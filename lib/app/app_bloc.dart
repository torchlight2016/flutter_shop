import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(super.initialState) {
    on<AppEvent>((event, emit) async {
      await event.when(changeSeedColor: (colorSeed, brightness) async {
        emit(_SeedColorChanged(
            colorSeed: colorSeed ?? state.colorSeed,
            brightness: brightness ?? state.brightness));
      });
    });
  }
}

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeSeedColor(
      {ColorSeed? colorSeed, Brightness? brightness}) = _ChangeSeedColor;
}

@freezed
class AppState with _$AppState {
  const factory AppState.seedColorChanged({
    required ColorSeed colorSeed,
    required Brightness brightness,
  }) = _SeedColorChanged;
}
