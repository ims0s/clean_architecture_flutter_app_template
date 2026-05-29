part of 'language_bloc.dart';

@freezed
abstract class LanguageChangedState with _$LanguageChangedState {
  const factory LanguageChangedState.LanguageFlowState({
    required List<String> language_list,
    required String selected_language,
  }) = _LanguageChangedStatee;
}
