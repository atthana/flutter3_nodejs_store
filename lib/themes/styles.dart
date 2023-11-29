// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_node_store/themes/colors.dart';

class AppTheme {

  // Custom text theme
  static final customTextTheme = TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 24,
    ),
  );

  // Light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'NotoSansThai',
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    hoverColor: divider,
    hintColor: accent,
    colorScheme: const ColorScheme.light(primary: primary),
    iconTheme: const IconThemeData(color: primaryText),
    scaffoldBackgroundColor: Colors.blueGrey[100],
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'NotoSansThai',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      backgroundColor: primary,
      foregroundColor: icons,
      iconTheme: IconThemeData(color: icons),
    ),
  );

  // Dark theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'NotoSansThai',
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    hoverColor: divider,
    hintColor: accent,
    colorScheme: const ColorScheme.dark(primary: icons),
    iconTheme: const IconThemeData(color: icons),
    scaffoldBackgroundColor: primaryText,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'NotoSansThai',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      backgroundColor: primaryText,
      foregroundColor: icons,
      iconTheme: IconThemeData(color: icons),
    ),
  );

}