import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';

class HeroSectionTablet extends StatelessWidget {
  const HeroSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: ShaderMask(
            shaderCallback: (bounds) =>
                AppColors.pinkPurple.createShader(bounds),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mingalarba!\nI am Htet Wai,\na mobile developer.',
                style: TextStyle(
                  fontSize: 72,
                  height: 72 / 64,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        AppSpacings.heightSmall,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Crafting solutions with heart, focusing on looks and feels.',
              style: TextStyle(
                color: AppColors.darkGray,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        AppSpacings.heightSmall,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: FilledButton(
              onPressed: () {
                _launchUrl(
                  'https://drive.google.com/file/d/18MqA5XAr5gXxIWlSWxzYtOKBRP_Hl2Lh/view?usp=sharing',
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),

                child: Text(
                  'View Resume',
                  style: TextStyle(
                    fontSize: 16,
                    height: 28 / 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        AppSpacings.heightSmall,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Row(
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
              const SizedBox(width: 32),
              _SocialButton(
                icon: EvaIcons.githubOutline,
                label: 'GitHub',
                onTap: () {
                  _launchUrl('https://www.github.com/HtetWaiHlyanKyaw');
                },
              ),
              const SizedBox(width: 32),
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
        AppSpacings.heightSmall,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Based in Yangon, Myanmar.',
              style: TextStyle(
                color: AppColors.darkGray,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
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
