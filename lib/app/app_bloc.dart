import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(super.initialState) {
    on<AppEvent>((event, emit) {
      switch (event) {
        case ChangeSeedColor(
            colorSeed: final ColorSeed? colorSeed,
            brightness: final Brightness? brightness
          ):
          emit(AppState(
              colorSeed: colorSeed ?? state.colorSeed,
              brightness: brightness ?? state.brightness));
          break;
      }
    });
  }
}

sealed class AppEvent {}

final class ChangeSeedColor extends AppEvent {
  ColorSeed? colorSeed;
  Brightness? brightness;

  ChangeSeedColor({this.colorSeed, this.brightness});
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ColorSeed colorSeed,
    required Brightness brightness,
  }) = _AppState;
}
