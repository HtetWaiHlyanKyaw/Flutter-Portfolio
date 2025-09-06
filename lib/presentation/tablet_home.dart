import 'package:flutter/material.dart';
import 'package:new_portfolio/presentation/tablet_widgets/app_footer_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/app_sliver_app_bar_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/sections/about_section_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/sections/education_section_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/sections/hero_section_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/sections/projects_section_tablet.dart';
import 'package:new_portfolio/presentation/tablet_widgets/sections/skills_section_tablet.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_spacings.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

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
          AppSliverAppBarTablet(
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
                  AppSpacings.heightLarge,
                  HeroSectionTablet(),
                  AppSpacings.tabletSectionSpacing,
                  AboutSectionTablet(key: aboutKey),
                  AppSpacings.tabletSectionSpacing,
                  SkillsSectionTablet(key: skillsKey),
                  AppSpacings.tabletSectionSpacing,
                  ProjectsSectionTablet(key: projectsKey),
                  AppSpacings.tabletSectionSpacing,
                  EducationSectionTablet(key: educationKey),
                  AppSpacings.tabletSectionSpacing,
                  AppFooterTablet(),
                  AppSpacings.heightMedium,
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: FilledButton(
      //     onPressed: () {
      //       _launchUrl(
      //         'https://drive.google.com/file/d/18MqA5XAr5gXxIWlSWxzYtOKBRP_Hl2Lh/view?usp=sharing',
      //       );
      //     },
      //     style: FilledButton.styleFrom(
      //       backgroundColor: AppColors.primary,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //       elevation: 2,
      //       shadowColor: AppColors.primary,
      //     ),
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      //       child: Text(
      //         'View Resume',
      //         style: TextStyle(
      //           fontSize: 16,
      //           height: 28 / 16,
      //           fontWeight: FontWeight.w600,
      //           color: AppColors.white,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
