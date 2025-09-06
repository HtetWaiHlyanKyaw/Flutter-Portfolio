import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF4E65FF);
  static const Color black = Color(0xFF12173C);
  static const Color darkBlue = Color(0xFF2F3C91);
  static const Color darkGray = Color(0xFF8F8F91);
  static const Color gray = Color(0xFFE9E9E9);
  static const Color white = Color(0xFFFFFFFF);

  static const Gradient orangeRed = LinearGradient(
    colors: [Color(0xFF9C6B39), Color(0xFF9C3888)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient blueGreen = LinearGradient(
    colors: [Color(0xFF399C61), Color(0xFF38609C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // static const Gradient redYellow = LinearGradient(
  //   colors: [Color(0xFFCFC249), Color(0xFFD54D4D)],
  //   begin: Alignment.topLeft,
  //   end: Alignment.bottomRight,
  // );

  static const Gradient pinkPurple = LinearGradient(
    colors: [Color(0xFFF94F85), Color(0xFF7D54F9)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final Gradient primaryWhite = LinearGradient(
    colors: [Color(0xFF4E65FF), white.withAlpha(25)],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static const Gradient purpleRed = LinearGradient(
    colors: [Color(0xFF4F399C), Color(0xFF9C3839)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient greenBlue = LinearGradient(
    colors: [Color(0xFF394D9C), Color(0xFF389C6F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient redYellow = LinearGradient(
    colors: [Color(0xFF9C8539), Color(0xFF9C3853)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static final Gradient pinkOrange = LinearGradient(
    // center: Alignment.center,
    // radius: 6,
    colors: [
      Color(0xFFFFFFFF).withAlpha(25),
      Color(0xFFFF6200).withAlpha(25),
      Color(0xFFFF00D4).withAlpha(25),
      Color(0xFFFF6200).withAlpha(25),
      Color(0xFFFFFFFF).withAlpha(25),
    ],
  );

  static final Gradient purpleBlue = LinearGradient(
    // center: Alignment.center,
    // radius: 6,
    colors: [
      Color(0xFFFFFFFF).withAlpha(25),
      Color(0xFF00D0FF).withAlpha(25),
      Color(0xFF6004FF).withAlpha(25),
      Color(0xFF00D0FF).withAlpha(25),
      Color(0xFFFFFFFF).withAlpha(25),
    ],
  );

  static final Gradient greenWhite = LinearGradient(
    colors: [Color(0xFF00FF48).withAlpha(25), white.withAlpha(25)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static final Gradient blueWhite = LinearGradient(
    colors: [Color(0xFF0009FF).withAlpha(25), white.withAlpha(25)],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static final Gradient blueWhite2 = LinearGradient(
    colors: [Color(0xFF00b5df).withAlpha(25), white.withAlpha(25)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static final Gradient greenWhite2 = LinearGradient(
    colors: [Color(0xff29df00).withAlpha(25), white.withAlpha(25)],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
}
