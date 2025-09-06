import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../app_profile_image_card_mobile.dart';

class HeroSectionMobile extends StatelessWidget {
  const HeroSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppProfileImageCardMobile(),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ShaderMask(
            shaderCallback: (bounds) =>
                AppColors.pinkPurple.createShader(bounds),
            child: Text(
              'Mingalarba!\nI am Htet Wai,\na mobile developer.',
              style: TextStyle(
                fontSize: 48,
                height: 56 / 48,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),

        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Crafting solutions with heart, focusing on looks and feels.',
            style: TextStyle(
              color: AppColors.darkGray,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialButton(
                icon: EvaIcons.linkedinOutline,
                label: 'LinkedIn',
                onTap: () {
                  _launchUrl(
                    'https://www.linkedin.com/in/htet-wai-hlyan-kyaw-431a13282',
                  );
                },
              ),
              AppSpacings.widthSmall,
              _SocialButton(
                icon: EvaIcons.githubOutline,
                label: 'GitHub',
                onTap: () {
                  _launchUrl('https://www.github.com/HtetWaiHlyanKyaw');
                },
              ),
              AppSpacings.widthSmall,

              _SocialButton(
                icon: EvaIcons.facebookOutline,
                label: 'Facebook',
                onTap: () {
                  _launchUrl('https://www.facebook.com/jaz.miler');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // borderRadius: BorderRadius.circular(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
