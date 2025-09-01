import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppFooterTablet extends StatefulWidget {
  const AppFooterTablet({super.key});

  @override
  State<AppFooterTablet> createState() => _AppFooterTabletState();
}

class _AppFooterTabletState extends State<AppFooterTablet> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              !_isHovered
                  ? AppBoxShadows.purpleShadow
                  : AppBoxShadows.purpleShadowHovered,
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(height: 8),
                      ShaderMask(
                        shaderCallback: (value) {
                          return AppColors.pinkPurple.createShader(value);
                        },
                        child: Text(
                          'Stay Humble,\nDream Big.',
                          style: TextStyle(
                            fontSize: 32,
                            height: 40 / 32,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(0),
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
                                size: 32,

                                color: AppColors.primary,
                              ),
                            ),
                            SizedBox(width: 16),
                            IconButton(
                              padding: EdgeInsets.all(0),
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
                                size: 32,
                              ),
                            ),
                            SizedBox(width: 16),
                            IconButton(
                              onPressed: () {
                                _launchUrl(
                                  'https://www.facebook.com/jaz.miler',
                                );
                              },
                              padding: EdgeInsets.all(0),
                              style: IconButton.styleFrom(
                                splashFactory: NoSplash.splashFactory,
                                surfaceTintColor: Colors.transparent,
                                overlayColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                              ),
                              icon: Icon(
                                EvaIcons.facebookOutline,
                                size: 32,

                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SelectableText(
                              'htetwaihlyankyaw27@gmail.com',
                              style: TextStyle(
                                fontSize: 12,
                                height: 18 / 12,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              '+959-761-124-297',
                              style: TextStyle(
                                fontSize: 12,
                                height: 18 / 12,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              'Yangon, Myanmar',
                              style: TextStyle(
                                fontSize: 12,
                                height: 18 / 12,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Designed with Figma. Built with Flutter.',
                style: TextStyle(
                  fontSize: 12,
                  height: 20 / 12,
                  color: AppColors.darkGray,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Copyright ©️ 2025 Htet Wai Hlyan Kyaw',
                style: TextStyle(
                  fontSize: 12,
                  height: 20 / 12,
                  color: AppColors.darkGray,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
