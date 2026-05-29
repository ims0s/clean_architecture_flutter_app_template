import 'package:bloc/bloc.dart';
import 'package:app_template/core/resources/theme_manager.dart';
import 'package:app_template/features/Settings/domain/usecases/get_theme_mode_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/set_theme_mode_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetThemeModeUsecase getStoredThemeUseCase;
  final SetThemeModeUsecase setThemeModeUseCase;
  SettingsBloc(this.getStoredThemeUseCase, this.setThemeModeUseCase)
    : super(SettingsState.settingsFlowState(isDarkMode: false)) {
    on<SettingsEvent>((event, emit) async {
      if (event is _ToggleDarkModeEvent) {
        await setThemeModeUseCase.call(event.isDarkMode);
        emit(
          state.copyWith(
            isDarkMode: event.isDarkMode,
            themeMode: event.isDarkMode ? darkMode : lightMode,
          ),
        );
      } else if (event is _GetStoredThemeEvent) {
        final isDarkMode = getStoredThemeUseCase.call();
        emit(
          state.copyWith(
            isDarkMode: isDarkMode,
            themeMode: isDarkMode ? darkMode : lightMode,
          ),
        );
      }
    });
  }
}
