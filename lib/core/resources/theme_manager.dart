import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: const Color(0xFFF7F9FA),
  extensions: <ThemeExtension<AppColorsExtension>>[
    const AppColorsExtension(
      primary: Color(0xFF03598C),
      primaryVariant: Color(0xFF0A6EA8),
      secondary: Color(0xFF60CCF1),
      secondaryVariant: Color(0xFF8EE5FF),
      background: Color(0xFFF7F9FA),
      surface: Color(0xFFFFFFFF),
      textPrimary: Color(0xFF1A1D1F),
      textPrimaryInsideButton: Color(0xFFFFFFFF),
      textSecondary: Color(0xFF4A4F57),
      tertiary: Color(0xFFB3B9C1),
      borders: Color(0xFFE1E5E8),
      dividers: Color(0xFFD6DBDF),
      iconsActive: Color(0xFF03598C),
      iconsInactive: Color(0xFF9AA1A7),
      success: Color(0xFF27AE60),
      error: Color(0xFFE63946),
      warning: Color(0xFFF2C94C),
      info: Color(0xFF2D9CDB),
      accent: Color(0xFF0AA6CE),
      placeHolderBase: Color(0x7F4A4F57),
      placeHolderHighlight: Color(0x424A4F57),
    ),
  ],
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0E1215),
  fontFamily: 'Poppins',
  extensions: <ThemeExtension<AppColorsExtension>>[
    const AppColorsExtension(
      primary: Color(0xFF0A4B6E),
      primaryVariant: Color(0xFF003D5A),
      secondary: Color(0xFF3BA9CF),
      secondaryVariant: Color(0xFF2E8CA9),
      background: Color(0xFF0E1215),
      surface: Color(0xFF191F23),
      textPrimary: Color(0xFFFFFFFF),
      textPrimaryInsideButton: Color(0xFFFFFFFF),
      textSecondary: Color(0xFFD1D5D9),
      tertiary: Color(0xFFA1A8AE),
      borders: Color(0xFF2E363C),
      dividers: Color(0xFF2A3236),
      iconsActive: Color(0xFF60CCF1),
      iconsInactive: Color(0xFF879097),
      success: Color(0xFF1F8A4D),
      error: Color(0xFFC72E38),
      warning: Color(0xFFD7B33E),
      info: Color(0xFF2079AC),
      accent: Color(0xFF07809C),
      placeHolderBase: Color(0x7FD1D5D9),
      placeHolderHighlight: Color(0xFFE1E5E8),
    ),
  ],
);

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.primary,
    required this.primaryVariant,
    required this.secondary,
    required this.secondaryVariant,
    required this.background,
    required this.surface,
    required this.textPrimary,
    required this.textPrimaryInsideButton,
    required this.textSecondary,
    required this.tertiary,
    required this.borders,
    required this.dividers,
    required this.iconsActive,
    required this.iconsInactive,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.accent,
    required this.placeHolderBase,
    required this.placeHolderHighlight,
  });

  final Color primary;
  final Color primaryVariant;
  final Color secondary;
  final Color secondaryVariant;
  final Color background;
  final Color surface;
  final Color textPrimary;
  final Color textPrimaryInsideButton;
  final Color textSecondary;
  final Color tertiary;
  final Color borders;
  final Color dividers;
  final Color iconsActive;
  final Color iconsInactive;
  final Color success;
  final Color error;
  final Color warning;
  final Color info;
  final Color accent;
  final Color placeHolderBase;
  final Color placeHolderHighlight;

  @override
  AppColorsExtension copyWith({
    Color? primary,
    Color? primaryVariant,
    Color? secondary,
    Color? secondaryVariant,
    Color? background,
    Color? surface,
    Color? textPrimary,
    Color? textPrimaryInsideButton,
    Color? textSecondary,
    Color? tertiary,
    Color? borders,
    Color? dividers,
    Color? iconsActive,
    Color? iconsInactive,
    Color? success,
    Color? error,
    Color? warning,
    Color? info,
    Color? accentColor,
    Color? placeHolderBase,
    Color? placeHolderHighlight,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      secondary: secondary ?? this.secondary,
      secondaryVariant: secondaryVariant ?? this.secondaryVariant,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      textPrimary: textPrimary ?? this.textPrimary,
      textPrimaryInsideButton:
          textPrimaryInsideButton ?? this.textPrimaryInsideButton,
      textSecondary: textSecondary ?? this.textSecondary,
      tertiary: tertiary ?? this.tertiary,
      borders: borders ?? this.borders,
      dividers: dividers ?? this.dividers,
      iconsActive: iconsActive ?? this.iconsActive,
      iconsInactive: iconsInactive ?? this.iconsInactive,
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      accent: accentColor ?? this.accent,
      placeHolderBase: placeHolderBase ?? this.placeHolderBase,
      placeHolderHighlight: placeHolderHighlight ?? this.placeHolderHighlight,
    );
  }

  @override
  AppColorsExtension lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryVariant: Color.lerp(primaryVariant, other.primaryVariant, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryVariant: Color.lerp(
        secondaryVariant,
        other.secondaryVariant,
        t,
      )!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textPrimaryInsideButton: Color.lerp(
        textPrimaryInsideButton,
        other.textPrimaryInsideButton,
        t,
      )!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      borders: Color.lerp(borders, other.borders, t)!,
      dividers: Color.lerp(dividers, other.dividers, t)!,
      iconsActive: Color.lerp(iconsActive, other.iconsActive, t)!,
      iconsInactive: Color.lerp(iconsInactive, other.iconsInactive, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      placeHolderBase: Color.lerp(placeHolderBase, other.placeHolderBase, t)!,
      placeHolderHighlight: Color.lerp(
        placeHolderHighlight,
        other.placeHolderHighlight,
        t,
      )!,
    );
  }
}

extension CustomThemeGetter on BuildContext {
  AppColorsExtension get customColors =>
      Theme.of(this).extension<AppColorsExtension>()!;
}
