abstract class LanguageRepository {
  Future<List<String>> getAllLanguages();
  Future<String?> getAppLanguage();
  Future<void> changeAppLanguage(String langCode);
  bool isDarkMode();
  Future<void> changeThemeMode(bool isDarkMode);
}
