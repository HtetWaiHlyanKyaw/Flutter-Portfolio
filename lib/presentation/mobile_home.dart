import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_colors.dart';
import 'package:new_portfolio/core/constants/app_spacings.dart';
import 'package:new_portfolio/presentation/mobile_widgets/app_footer_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/app_sliver_app_bar_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/sections/about_section_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/sections/education_section_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/sections/hero_section_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/sections/projects_section_mobile.dart';
import 'package:new_portfolio/presentation/mobile_widgets/sections/skills_section_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final aboutKey = GlobalKey();
    final skillsKey = GlobalKey();
    final projectsKey = GlobalKey();
    final educationKey = GlobalKey();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          AppSliverAppBarMobile(
            onNavItemSelected: (section) {
              switch (section) {
                case "About":
                  Scrollable.ensureVisible(
                    aboutKey.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                  break;
                case "Skills":
                  Scrollable.ensureVisible(
                    skillsKey.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                  break;
                case "Projects":
                  Scrollable.ensureVisible(
                    projectsKey.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                  break;
                case "Education":
                  Scrollable.ensureVisible(
                    educationKey.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                  break;
              }
            },
          ),

          SliverToBoxAdapter(
            child: SafeArea(
              child: Column(
                children: [
                  // AppSpacings.heightMedium,
                  HeroSectionMobile(),
                  AppSpacings.mobileSectionSpacing,
                  AboutSectionMobile(key: aboutKey),
                  AppSpacings.mobileSectionSpacing,
                  SkillsSectionMobile(key: skillsKey),
                  AppSpacings.mobileSectionSpacing,
                  ProjectsSectionMobile(key: projectsKey),
                  AppSpacings.mobileSectionSpacing,
                  EducationSectionMobile(key: educationKey),
                  AppSpacings.heightMedium,
                  AppFooterMobile(),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FilledButton.icon(
        onPressed: () {
          _launchUrl(
            'https://drive.google.com/file/d/18MqA5XAr5gXxIWlSWxzYtOKBRP_Hl2Lh/view?usp=sharing',
          );
        },
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 2,
          shadowColor: AppColors.primary,
        ),
        icon: Icon(
          EvaIcons.externalLinkOutline,
          color: AppColors.white,
          size: 24,
        ),
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),

          child: Text(
            'Resume',
            style: TextStyle(
              fontSize: 16,
              height: 28 / 16,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
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
