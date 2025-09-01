import 'package:flutter/cupertino.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppProfileImageCard extends StatefulWidget {
  const AppProfileImageCard({super.key});

  @override
  State<AppProfileImageCard> createState() => _AppProfileImageCardState();
}

class _AppProfileImageCardState extends State<AppProfileImageCard> {
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
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [AppBoxShadows.purpleShadow],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: _isHovered
              ? Image.asset(
                  'assets/images/portrait.png',
                  width: 240,
                  fit: BoxFit.cover,
                )
              : ShaderMask(
                  shaderCallback: (bounds) =>
                      AppColors.orangeRed.createShader(bounds),
                  blendMode: BlendMode.screen,
                  child: Image.asset(
                    'assets/images/portrait.png',
                    width: 240,

                    fit: BoxFit.cover,
                  ),
                ),
        ),
      ),
    );
  }
}
