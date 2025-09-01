import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import '../../../core/constants/app_colors.dart';
import '../../desktop_widgets/app_tech_card.dart';
import '../../widgets/app_section_title.dart';

class SkillsSectionTablet extends StatelessWidget {
  const SkillsSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'WHAT I BUILD WITH'),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTag('Mobile'),

            SizedBox(width: 16),
            _buildTag('Web'),

            SizedBox(width: 16),

            _buildTag('Cross-Platform'),
            SizedBox(width: 16),

            _buildTag('UI/UX'),

            SizedBox(width: 16),
            _buildTag('Backend'),

            SizedBox(width: 16),

            _buildTag('Serverless'),
          ],
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(vertical: 24),

          decoration: BoxDecoration(gradient: AppColors.pinkOrange),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTechCard(
                    title: 'Flutter',
                    icon: SimpleIcons.flutter,
                    color: Color(0xFF02569B),
                  ),
                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'Dart',
                    icon: SimpleIcons.dart,
                    color: Color(0xFF0175C2),
                  ),
                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'Laravel',
                    icon: SimpleIcons.laravel,
                    color: Color(0xFFFF2D20),
                  ),
                  SizedBox(width: 16),

                  AppTechCard(
                    title: 'PHP',
                    icon: SimpleIcons.php,
                    color: Color(0xFF777BB4),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTechCard(
                    title: 'HTML',
                    icon: SimpleIcons.html5,
                    color: Color(0xFFE34F26),
                  ),
                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'CSS',
                    icon: SimpleIcons.css,
                    color: Color(0xFF663399),
                  ),
                  SizedBox(width: 16),

                  AppTechCard(
                    title: 'Firebase',
                    icon: SimpleIcons.firebase,
                    color: Color(0xFFDD2C00),
                  ),
                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'Supabase',
                    icon: SimpleIcons.supabase,
                    color: Color(0xFF3FCF8E),
                  ),
                ],
              ),

              // SizedBox(height: 16),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //
              //   ],
              // ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTechCard(
                    title: 'Bootstrap',
                    icon: SimpleIcons.bootstrap,
                    color: Color(0xFF7952B3),
                  ),

                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'MySQL',
                    icon: SimpleIcons.mysql,
                    color: Color(0xFF4479A1),
                  ),
                  SizedBox(width: 16),

                  AppTechCard(
                    title: 'Git',
                    icon: SimpleIcons.git,
                    color: Color(0xFFF05032),
                  ),
                  SizedBox(width: 16),
                  AppTechCard(
                    title: 'Figma',
                    icon: SimpleIcons.figma,
                    color: Color(0xFFF24E1E),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTag(String title) {
    return Text(
      title,
      style: TextStyle(
        color: AppColors.primary,
        fontSize: 16,
        height: 28 / 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
