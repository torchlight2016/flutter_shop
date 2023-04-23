import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState.initial()) {
    on<MainEvent>((event, emit) async {
      await event.map(
        changeSeedColor: (event) async => await _changeSeedColor(event, emit),
      );
    });
  }

  _changeSeedColor(event, emit) async {
    emit(_SeedColorChanged(event.colorSeed));
  }
}

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.changeSeedColor({required ColorSeed colorSeed}) =
      _ChangeSeedColor;
}

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.seedColorChanged(ColorSeed colorSeed) =
      _SeedColorChanged;
}
