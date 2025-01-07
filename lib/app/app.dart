import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/app/app_theme_data.dart';
import 'package:ecommerce/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme:AppThemeData.lightThemeData,
      routes: {
        '/':(context)=>SplashScreen(),
      },
    );
  }
}