import 'package:flutter/material.dart';

import '../../barrel.dart';

class ThemeManager {
  static ThemeData getThemeData({
    required Locale locale,
    required bool isDarkMode,
  }) {
    final String defaultFontFamily = locale == LocaleManager.koLocale
        ? FontConstants.NotoSansKrFontFamily
        : FontConstants.ManropeFontFamily;

    ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorManager.primary,
      disabledColor: ColorManager.blueGrey50,
      textTheme: TextTheme(
        titleLarge: getDefaultTextStyle(defaultFontFamily, ValueManager.s34),
        titleMedium: getDefaultTextStyle(defaultFontFamily, ValueManager.s30),
        titleSmall: getDefaultTextStyle(defaultFontFamily, ValueManager.s26),
        bodyLarge: getDefaultTextStyle(defaultFontFamily, ValueManager.s22),
        bodyMedium: getDefaultTextStyle(defaultFontFamily, ValueManager.s18),
        bodySmall: getDefaultTextStyle(defaultFontFamily, ValueManager.s12),
      ),
    );

    ThemeData darkTheme = ThemeData();

    return isDarkMode ? darkTheme : lightTheme;
  }

  static TextStyle getDefaultTextStyle(
    String defaultFontFamily,
    double fontSize,
  ) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: defaultFontFamily,
    );
  }
}
