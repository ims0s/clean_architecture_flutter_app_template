import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class SetThemeModeUsecase {
  final LanguageRepository languageRepository;
  SetThemeModeUsecase(this.languageRepository);
  Future<void> call(bool isDarkMode) async {
    return languageRepository.changeThemeMode(isDarkMode);
  }
}
