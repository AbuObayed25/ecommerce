import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themecolor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themecolor,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        textTheme: TextTheme(
            titleLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        )));
  }

  static ThemeData get darkThemeData {
    return ThemeData(
      colorSchemeSeed: AppColors.themecolor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.themecolor,
      ),
      //scaffoldBackgroundColor: Colors.black,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 2,
      ),
    );
  }
}
