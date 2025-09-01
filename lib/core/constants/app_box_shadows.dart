import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_colors.dart';

class AppBoxShadows {
  AppBoxShadows._();

  static final BoxShadow purpleShadow = BoxShadow(
    color: AppColors.primary.withAlpha(25),
    offset: Offset(0, 0),
    blurRadius: 16,
  );
  static final BoxShadow purpleShadowHovered = BoxShadow(
    color: AppColors.primary.withAlpha(50),
    offset: Offset(0, 0),
    blurRadius: 16,
  );

  static final BoxShadow pinkShadow = BoxShadow(
    color: Color(0xFFF94F85).withAlpha(64),
    offset: Offset(0, 0),
    blurRadius: 16,
  );
}
