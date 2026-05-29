// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const String ARABIC = "ar";
const String ENGLISH = "en";

const String ASSET_PATH_LOCALIZATION = "assets/translations";

const Locale ARABIC_LOCAL = Locale("ar");
const Locale ENGLISH_LOCAL = Locale("en");

enum LanguageType { ENGLISH, ARABIC }

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ARABIC:
        return ARABIC;
      case LanguageType.ENGLISH:
        return ENGLISH;
    }
  }
}
