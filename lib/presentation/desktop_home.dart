import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_colors.dart';
import 'package:new_portfolio/core/constants/app_spacings.dart';
import 'package:new_portfolio/presentation/desktop_widgets/app_footer.dart';
import 'package:new_portfolio/presentation/desktop_widgets/app_sliver_app_bar.dart';
import 'package:new_portfolio/presentation/desktop_widgets/sections/about_section.dart';
import 'package:new_portfolio/presentation/desktop_widgets/sections/education_section.dart';
import 'package:new_portfolio/presentation/desktop_widgets/sections/hero_section.dart';
import 'package:new_portfolio/presentation/desktop_widgets/sections/projects_section.dart';
import 'package:new_portfolio/presentation/desktop_widgets/sections/skills_section.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _HomePageState();
}

class _HomePageState extends State<DesktopHome> {
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final educationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          /// APP BAR
          AppSliverAppBar(
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
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1600),
                  child: Column(
                    children: [
                      AppSpacings.heightMedium,

                      /// HERO
                      HeroSection(),
                      AppSpacings.desktopSectionSpacing,

                      /// ABOUT
                      Container(key: aboutKey, child: AboutSection()),
                      AppSpacings.desktopSectionSpacing,

                      /// SKILLS
                      Container(key: skillsKey, child: SkillsSection()),
                      AppSpacings.desktopSectionSpacing,

                      /// PROJECTS
                      Container(key: projectsKey, child: ProjectsSection()),
                      AppSpacings.desktopSectionSpacing,

                      /// EDUCATION
                      Container(key: educationKey, child: EducationSection()),
                      AppSpacings.desktopSectionSpacing,

                      /// FOOTER
                      AppFooter(),
                      AppSpacings.heightMedium,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
