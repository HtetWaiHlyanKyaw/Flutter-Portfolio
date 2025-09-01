import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../../widgets/app_section_title.dart';
import '../app_tech_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'WHAT I BUILD WITH'),
        AppSpacings.desktopTitleSpacing,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mobile',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 32),

            Text(
              'Web',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 32),

            Text(
              'Cross-Platform',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 32),

            Text(
              'UI/UX',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 32),

            Text(
              'Backend',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 32),

            Text(
              'Serverless',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                height: 28 / 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        AppSpacings.heightSmall,

        Container(
          padding: EdgeInsets.symmetric(vertical: 24),

          decoration: BoxDecoration(gradient: AppColors.pinkOrange),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTech(
                      'Flutter',
                      SimpleIcons.flutter,
                      Color(0xFF02569B),
                    ),

                    SizedBox(width: 16),

                    _buildTech('Dart', SimpleIcons.dart, Color(0xFF0175C2)),
                    SizedBox(width: 16),
                    _buildTech(
                      'Firebase',
                      SimpleIcons.firebase,
                      Color(0xFFDD2C00),
                    ),
                    SizedBox(width: 16),
                    _buildTech(
                      'Supabase',
                      SimpleIcons.supabase,
                      Color(0xFF3FCF8E),
                    ),

                    SizedBox(width: 16),

                    _buildTech(
                      'Laravel',
                      SimpleIcons.laravel,
                      Color(0xFFFF2D20),
                    ),

                    SizedBox(width: 16),

                    _buildTech('PHP', SimpleIcons.php, Color(0xFF777BB4)),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTech('HTML', SimpleIcons.html5, Color(0xFFE34F26)),

                    SizedBox(width: 16),

                    _buildTech('CSS', SimpleIcons.css, Color(0xFF663399)),
                    SizedBox(width: 16),
                    _buildTech(
                      'Bootstrap',
                      SimpleIcons.bootstrap,
                      Color(0xFF7952B3),
                    ),

                    // SizedBox(width: 16),
                    // _buildTech(
                    //   'Javascript',
                    //   SimpleIcons.javascript,
                    //   Color(0xFF02569B),
                    // ),
                    SizedBox(width: 16),

                    _buildTech('MySQL', SimpleIcons.mysql, Color(0xFF4479A1)),

                    SizedBox(width: 16),

                    _buildTech('Git', SimpleIcons.git, Color(0xFFF05032)),

                    SizedBox(width: 16),

                    _buildTech('Figma', SimpleIcons.figma, Color(0xFFF24E1E)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTech(String title, IconData icon, Color color) {
    return AppTechCard(icon: icon, title: title, color: color);
  }
}
