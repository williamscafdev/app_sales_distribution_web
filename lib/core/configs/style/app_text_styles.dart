import 'package:app_sales_distribution_web/core/configs/configs.dart';
import 'package:flutter/material.dart';

const String font = 'Public Sans';

TextStyle textStyle = const TextStyle(
  fontFamily: font,
  letterSpacing: 0,
  color: AppColors.white,
);

class TextStyleApp extends TextStyle {
  const TextStyleApp._({
    double fontSize = ResponsiveTextSize.s16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) : super(
          fontFamily: font,
          fontStyle: FontStyle.normal,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: 1.5,
        );

  static const hSB1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s48,
    fontWeight: FontWeight.w600,
  );
  static const hSB2 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s40,
    fontWeight: FontWeight.w600,
  );
  static const hSB3 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s32,
    fontWeight: FontWeight.w600,
  );
  static const hSB4 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s24,
    fontWeight: FontWeight.w600,
  );
  static const hSB5 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s20,
    fontWeight: FontWeight.w600,
  );
  static const hR1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s48,
  );
  static const hR2 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s40,
  );
  static const hR3 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s32,
  );
  static const hR4 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s24,
  );
  static const hR5 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s20,
  );

  static const bM1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s18,
    fontWeight: FontWeight.w500,
  );
  static const bM2 = TextStyleApp._(
    fontWeight: FontWeight.w500,
  );
  static const bM3 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s14,
    fontWeight: FontWeight.w500,
  );
  static const bM4 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s12,
    fontWeight: FontWeight.w500,
  );

  static const bR1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s18,
  );
  static const bR2 = TextStyleApp._();
  static const bR3 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s14,
  );
  static const bR4 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s12,
  );
  static const bR5 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s10,
  );

  static const cSB1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s18,
    fontWeight: FontWeight.w600,
  );
  static const cSB2 = TextStyleApp._(
    fontWeight: FontWeight.w600,
  );
}

extension BetterStyle on TextStyle {
  TextStyle get w100 => copyWith(
        fontWeight: FontWeight.w100,
      );
  TextStyle get w200 => copyWith(
        fontWeight: FontWeight.w200,
      );
  TextStyle get w300 => copyWith(
        fontWeight: FontWeight.w300,
      );
  TextStyle get w500 => copyWith(
        fontWeight: FontWeight.w500,
      );
  TextStyle get w600 => copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get w700 => copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get w800 => copyWith(
        fontWeight: FontWeight.w800,
      );
  TextStyle get w900 => copyWith(
        fontWeight: FontWeight.w900,
      );

  TextStyle get black => copyWith(
        color: AppColors.black,
      );
  TextStyle get greenPrimary => copyWith(
        color: AppColors.greenPrimary,
      );
  TextStyle get red500 => copyWith(
        color: AppColors.red500,
      );
  TextStyle get darkBorder => copyWith(
        color: AppColors.darkBorder,
      );
  TextStyle get darkTextLight => copyWith(
        color: AppColors.darkTextLight,
      );
  TextStyle get white => copyWith(
        color: AppColors.white,
      );
  TextStyle get orange400 => copyWith(
        color: AppColors.orange400,
      );
  TextStyle get grey200 => copyWith(
        color: AppColors.grey200,
      );
}
