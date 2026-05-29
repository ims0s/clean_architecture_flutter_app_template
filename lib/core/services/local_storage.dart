import 'package:app_template/core/utils/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppLocalStorage {
  String getAppLanguage();
  Future<void> changeAppLanguage(String langCode);
  String getThemeMode();
  Future<void> changeThemeMode(String themeMode);
  Locale getLocal();
  void setOnboardingCompleted();
  bool? isOnboardingCompleted();
  Future<void> setUserToken(String token);
  String getUserToken();
  Future<void> removeToken();
  Future<void> setUser(String userJson);
  String getUser();
  Future<void> removeUser();
}

class AppLocalStorageImpl implements AppLocalStorage {
  final SharedPreferences _localStorageService;

  AppLocalStorageImpl(this._localStorageService);

  @override
  String getAppLanguage() {
    return _localStorageService.getString('app_language') ?? 'en';
  }

  @override
  Future<void> changeAppLanguage(String langCode) async {
    await _localStorageService.setString('app_language', langCode);
  }

  @override
  Locale getLocal() {
    String currentLang = getAppLanguage();
    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  @override
  String getThemeMode() {
    return _localStorageService.getString('theme_mode') ?? 'light';
  }

  @override
  Future<void> changeThemeMode(String themeMode) async {
    await _localStorageService.setString('theme_mode', themeMode);
  }

  @override
  void setOnboardingCompleted() {
    _localStorageService.setBool('ONBOARDING_COMPLETED_KEY', true);
  }

  @override
  bool? isOnboardingCompleted() {
    return _localStorageService.getBool('ONBOARDING_COMPLETED_KEY');
  }

  @override
  Future<void> setUserToken(String token) async {
    await _localStorageService.setString('USER_TOKEN', token);
  }

  @override
  String getUserToken() {
    return _localStorageService.getString('USER_TOKEN') ?? '';
  }

  @override
  Future<void> removeToken() async {
    await _localStorageService.remove('USER_TOKEN');
  }

  @override
  Future<void> setUser(String userJson) async {
    await _localStorageService.setString('USER_DATA', userJson);
  }

  @override
  String getUser() {
    return _localStorageService.getString('USER_DATA') ?? '';
  }

  @override
  Future<void> removeUser() async {
    await _localStorageService.remove('USER_DATA');
  }
}
