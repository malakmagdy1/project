import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: AppFonts.text16,
    bodyMedium: AppFonts.text13,
    titleLarge: AppFonts.text20,
    titleMedium: AppFonts.text18,
  ),
  colorScheme: ColorScheme.light(
    onBackground: Colors.black, // text color for bodyText
    onPrimary: Colors.white, // text color for AppBar, buttons, etc.
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    bodyLarge: AppFonts.text16,
    bodyMedium: AppFonts.text13,
    titleLarge: AppFonts.text20,
    titleMedium: AppFonts.text18,
  ),
  colorScheme: ColorScheme.dark(
    onBackground: Colors.white,
    onPrimary: Colors.black,
  ),
);
