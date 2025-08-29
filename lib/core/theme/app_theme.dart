import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';

import '../utils/app_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: AppFonts.text18B,
    bodyMedium: AppFonts.text14B,
    titleLarge: AppFonts.text20B,
    titleMedium: AppFonts.text16B,
    titleSmall: AppFonts.text16,
    bodySmall: AppFonts.text14,
  ),
  colorScheme: ColorScheme.light(
    onSurface: Colors.black, // text color for bodyText
    onPrimary: Colors.white, // text color for AppBar, buttons, etc.
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.def),
      foregroundColor: WidgetStatePropertyAll(AppColors.greyLight),
      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      padding: const WidgetStatePropertyAll<EdgeInsets>(
        EdgeInsets.all(15.0),
      ),
      minimumSize: WidgetStatePropertyAll(
          Size(300, 55) //w,h
      ),
      textStyle: WidgetStatePropertyAll(
        AppFonts.text16B,
      ),
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    bodyLarge: AppFonts.text18B,
    bodyMedium: AppFonts.text14B,
    titleLarge: AppFonts.text20B,
    titleMedium: AppFonts.text16B,
    bodySmall: AppFonts.text14,
  ),
  colorScheme: ColorScheme.dark(
    onSurface: Colors.white,
    onPrimary: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.def),
      foregroundColor: WidgetStatePropertyAll(AppColors.greyLight),
      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      padding: const WidgetStatePropertyAll<EdgeInsets>(
        EdgeInsets.all(25.0),
      ),
      minimumSize: WidgetStatePropertyAll(
          Size(200, 60)
      ),
      textStyle: WidgetStatePropertyAll(
        AppFonts.text16B,
      ),
    ),
  ),

);
