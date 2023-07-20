import 'package:app_sales_distribution_web/core/configs/configs.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: font,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.darkBorder),
      scaffoldBackgroundColor: AppColors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkBorder,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.darkBorder,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.white),
      colorScheme: const ColorScheme.light(
        primary: AppColors.white,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 2,
        backgroundColor: AppColors.greenPrimary,
      ),
    );
  }
}
