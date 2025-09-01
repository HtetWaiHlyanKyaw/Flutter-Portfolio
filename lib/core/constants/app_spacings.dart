import 'package:flutter/cupertino.dart';

class AppSpacings {
  AppSpacings._();
  static const SizedBox heightExtraLarge = SizedBox(height: 128);
  static const SizedBox heightLarge = SizedBox(height: 64);
  static const SizedBox heightMedium = SizedBox(height: 32);
  static const SizedBox heightSmall = SizedBox(height: 16);

  static const SizedBox widthExtraLarge = SizedBox(width: 128);
  static const SizedBox widthLarge = SizedBox(width: 64);
  static const SizedBox widthMedium = SizedBox(width: 32);
  static const SizedBox widthSmall = SizedBox(width: 16);

  static const SizedBox mobileSectionSpacing = heightLarge;
  static const SizedBox mobileTitleSpacing = heightMedium;
  static const SizedBox mobileScreenPadding = heightMedium;

  static const SizedBox desktopSectionSpacing = heightExtraLarge;
  static const SizedBox desktopTitleSpacing = heightLarge;
}
