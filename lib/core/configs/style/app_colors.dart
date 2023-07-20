import 'package:flutter/material.dart';

class AppColors {
  static const Color greenPrimary = Color(0xFF00822B);
  static const Color greenLight = Color(0xFFF1F8F2);
  static const Color red500 = Color(0xFFD84D44);
  static const Color red300 = Color(0xFFE8958F);
  static const Color darkBorder = Color(0xFF2F3336);
  static const Color darkTextLight = Color(0xFF6E767D);
  static const Color grey200 = Color(0xFFB9B9B9);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color orange400 = Color(0xFFEF9550);
  static const Color orange300 = Color(0xFFF3AF7B);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1, 'shade values must be between 0 and 1');

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  static MaterialColor getMaterialColorFromColor(Color color) {
    final colorShades = <int, Color>{
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color,
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }
}
