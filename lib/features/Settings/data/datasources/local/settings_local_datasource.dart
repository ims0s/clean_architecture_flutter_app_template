import 'package:app_template/core/services/local_storage.dart';

abstract class SettingsLocalDatasource {
  Future<String?> getAppLanguage();
  Future<void> changeAppLanguage(String langCode);
  Future<void> changeThemeMode(String themeMode);
  String getThemeMode();
}

class SettingsLocalDatasourceImpl implements SettingsLocalDatasource {
  final AppLocalStorage appLocalStorage;

  SettingsLocalDatasourceImpl(this.appLocalStorage);

  @override
  Future<String?> getAppLanguage() async {
    return appLocalStorage.getLocal().toString();
  }

  @override
  Future<void> changeAppLanguage(String langCode) async {
    return appLocalStorage.changeAppLanguage(langCode);
  }

  @override
  Future<void> changeThemeMode(String themeMode) async {
    return appLocalStorage.changeThemeMode(themeMode);
  }

  @override
  String getThemeMode() {
    return appLocalStorage.getThemeMode();
  }
}
