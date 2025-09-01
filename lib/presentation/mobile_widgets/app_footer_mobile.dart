import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppFooterMobile extends StatefulWidget {
  const AppFooterMobile({super.key});

  @override
  State<AppFooterMobile> createState() => _AppFooterMobileState();
}

class _AppFooterMobileState extends State<AppFooterMobile> {
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              _isHovered
                  ? AppBoxShadows.purpleShadowHovered
                  : AppBoxShadows.purpleShadow,
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'hwhk.',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 24,
                            height: 32 / 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _launchUrl(
                                    'https://www.linkedin.com/in/htet-wai-hlyan-kyaw-431a13282',
                                  );
                                },
                                style: IconButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  surfaceTintColor: Colors.transparent,
                                  overlayColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                ),
                                icon: Icon(
                                  EvaIcons.linkedinOutline,
                                  size: 24,

                                  color: AppColors.primary,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _launchUrl(
                                    'https://www.github.com/HtetWaiHlyanKyaw',
                                  );
                                },
                                style: IconButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  surfaceTintColor: Colors.transparent,
                                  overlayColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                ),
                                icon: Icon(
                                  EvaIcons.githubOutline,

                                  color: AppColors.primary,
                                  size: 24,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _launchUrl(
                                    'https://www.facebook.com/jaz.miler',
                                  );
                                },
                                style: IconButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  surfaceTintColor: Colors.transparent,
                                  overlayColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                ),
                                icon: Icon(
                                  EvaIcons.facebookOutline,
                                  size: 24,

                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),
                    ShaderMask(
                      shaderCallback: (value) =>
                          AppColors.pinkPurple.createShader(value),
                      child: Text(
                        'Stay Humble, Dream Big.',
                        style: TextStyle(
                          fontSize: 32,
                          height: 40 / 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                SelectableText(
                  'htetwaihlyankyaw27@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    height: 20 / 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '+959-761-124-297',
                  style: TextStyle(
                    fontSize: 14,
                    height: 20 / 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Yangon, Myanmar',
                  style: TextStyle(
                    fontSize: 14,
                    height: 20 / 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 16),
                // Text(
                //   'Thank you for visiting. Wishing you success in achieving dreams.',
                //   style: TextStyle(
                //     fontSize: 12,
                //     height: 16 / 12,
                //     color: AppColors.darkGray,
                //     fontWeight: FontWeight.w600,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                Text(
                  'Built with Flutter. Designed with Figma.',
                  style: TextStyle(
                    fontSize: 12,
                    height: 16 / 12,
                    color: AppColors.darkGray,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Copyright ©️ 2025 Htet Wai Hlyan Kyaw',
                  style: TextStyle(
                    fontSize: 12,
                    height: 16 / 12,
                    color: AppColors.darkGray,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
