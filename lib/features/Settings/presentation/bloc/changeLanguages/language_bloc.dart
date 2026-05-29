import 'package:bloc/bloc.dart';
import 'package:app_template/core/services/local_storage.dart';
import 'package:app_template/features/Settings/domain/usecases/changeAppLanguage_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/getAllLanguage_usecase.dart';
import 'package:app_template/features/Settings/domain/usecases/getAppLanguage_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.dart';
part 'language_event.dart';
part 'language_bloc.freezed.dart';

class ChangeLanguageBloc
    extends Bloc<ChangeLanguageEvent, LanguageChangedState> {
  final GetAllLanguageUseCase _allLanguageUseCase;
  final ChangeAppLanguageUseCase _changeAppLanguageUseCase;
  final GetAppLanguageUseCase _getAppLanguageUseCase;
  // ignore: unused_field
  final AppLocalStorage _appLocalStorage;

  ChangeLanguageBloc(
    this._allLanguageUseCase,
    this._changeAppLanguageUseCase,
    this._getAppLanguageUseCase,
    this._appLocalStorage,
  ) : super(
        LanguageChangedState.LanguageFlowState(
          language_list: [],
          selected_language: _appLocalStorage.getLocal().toString(),
        ),
      ) {
    on<ChangeLanguageEvent>((event, emit) async {
      if (event is _GetAllLanguagesEvent) {
        final languages = await _allLanguageUseCase.execute();
        emit(state.copyWith(language_list: languages));
      } else if (event is _GetAppLanguageEvent) {
        await _getAppLanguageUseCase.execute().then((lang) {
          if (lang != null) {
            emit(state.copyWith(selected_language: lang));
          }
        });
      } else if (event is _ChangeAppLanguageEvent) {
        await _changeAppLanguageUseCase.execute(event.lang).then((response) {
          emit(state.copyWith(selected_language: event.lang));
        });
      }
    });
  }
}
