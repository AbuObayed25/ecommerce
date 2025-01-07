import 'package:ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData get lightThemeData{
    return ThemeData(
      colorSchemeSeed: AppColors.themecolor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.themecolor,
      )
    );
  }
}