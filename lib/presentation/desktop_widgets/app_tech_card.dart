import 'package:flutter/material.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppTechCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final Color color;
  const AppTechCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  State<AppTechCard> createState() => _AppTechCardState();
}

class _AppTechCardState extends State<AppTechCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: _isHovered
                ? Border.all(color: AppColors.primary)
                : Border.all(color: AppColors.primary.withAlpha(64)),
            boxShadow: [
              _isHovered
                  ? AppBoxShadows.purpleShadowHovered
                  : AppBoxShadows.purpleShadow,
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(widget.icon, color: widget.color, size: 32),
              SizedBox(width: 12),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18,
                  height: 32 / 18,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
