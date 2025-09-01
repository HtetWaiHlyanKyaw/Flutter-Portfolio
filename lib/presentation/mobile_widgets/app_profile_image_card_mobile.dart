import 'package:flutter/material.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppProfileImageCardMobile extends StatefulWidget {
  const AppProfileImageCardMobile({super.key});

  @override
  State<AppProfileImageCardMobile> createState() =>
      _AppProfileImageCardMobileState();
}

class _AppProfileImageCardMobileState extends State<AppProfileImageCardMobile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 480),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [AppBoxShadows.purpleShadow],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: _isHovered
                  ? Image.asset('assets/images/portrait.png', fit: BoxFit.cover)
                  : ShaderMask(
                      shaderCallback: (bounds) =>
                          AppColors.orangeRed.createShader(bounds),
                      blendMode: BlendMode.screen,
                      child: Image.asset(
                        'assets/images/portrait.png',
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
