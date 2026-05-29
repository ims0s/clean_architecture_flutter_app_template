part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  factory SettingsEvent.toggleDarkModeEvent(bool isDarkMode) =
      _ToggleDarkModeEvent;
  factory SettingsEvent.getStoredThemeEvent() = _GetStoredThemeEvent;
}
