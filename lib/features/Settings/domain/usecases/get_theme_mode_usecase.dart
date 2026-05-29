import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class GetThemeModeUsecase {
  final LanguageRepository languageRepository;
  GetThemeModeUsecase(this.languageRepository);
  bool call() {
    return languageRepository.isDarkMode();
  }
}
