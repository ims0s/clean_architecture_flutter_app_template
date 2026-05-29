part of 'language_bloc.dart';

@freezed
abstract class ChangeLanguageEvent with _$ChangeLanguageEvent {
  factory ChangeLanguageEvent.NewLanguageSelectedEvent(String lang) =
      _NewLanguageSelectedEvent;
  factory ChangeLanguageEvent.GetAllLanguagesEvent() = _GetAllLanguagesEvent;
  factory ChangeLanguageEvent.GetUserLanguageEvent() = _GetAppLanguageEvent;
  factory ChangeLanguageEvent.AppLanguageChangedEvent(String lang) =
      _ChangeAppLanguageEvent;
}