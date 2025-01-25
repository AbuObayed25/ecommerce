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
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400 ,
        ),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(8)
          borderSide: BorderSide(color: AppColors.themecolor)
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themecolor,
            foregroundColor: Colors.white,
            fixedSize: Size.fromWidth(double.maxFinite),
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
        ),
      )
    );
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
