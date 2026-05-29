import 'package:app_template/features/Settings/data/datasources/local/settings_local_datasource.dart';
import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class LanguageRepositoryImp implements LanguageRepository {
  final SettingsLocalDatasource _datasource;
  LanguageRepositoryImp(this._datasource);

  @override
  Future<List<String>> getAllLanguages() async {
    // For demonstration, returning a static list of languages.
    return ['en', 'ar'];
  }

  @override
  Future<String?> getAppLanguage() {
    return _datasource.getAppLanguage();
  }

  @override
  Future<void> changeAppLanguage(String langCode) {
    return _datasource.changeAppLanguage(langCode);
  }

  @override
  bool isDarkMode() {
    String result = _datasource.getThemeMode();
    if (result == 'dark') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> changeThemeMode(bool isDarkMode) {
    if (isDarkMode) {
      return _datasource.changeThemeMode('dark');
    } else {
      return _datasource.changeThemeMode('light');
    }
  }
}
