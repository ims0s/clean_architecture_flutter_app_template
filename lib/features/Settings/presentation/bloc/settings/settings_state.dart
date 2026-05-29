part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.settingsFlowState({
    required bool isDarkMode,
    ThemeData? themeMode,
  }) = _SettingsState;
}
