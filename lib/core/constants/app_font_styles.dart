import 'dart:ui';

class AppFontStyles {
  AppFontStyles._();

  static final TextStyle h1 = TextStyle(
    fontSize: 64,
    height: 72 / 64,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle h2 = TextStyle(
    fontSize: 56,
    height: 64 / 56,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle h3 = TextStyle(
    fontSize: 56,
    height: 64 / 56,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle h4 = TextStyle(
    fontSize: 48,
    height: 56 / 48,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle h5 = TextStyle(
    fontSize: 40,
    height: 48 / 40,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle h6 = TextStyle(
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle bodyLarge = TextStyle(fontSize: 18, height: 32);
  static final TextStyle bodyRegular = TextStyle(fontSize: 16, height: 28);
  static final TextStyle bodySmall = TextStyle(fontSize: 14, height: 24);
  static final TextStyle bodyTiny = TextStyle(fontSize: 12, height: 20);
  static final TextStyle paragraph = TextStyle(fontSize: 16, height: 32);
}
