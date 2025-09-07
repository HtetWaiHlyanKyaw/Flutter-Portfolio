import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_strings.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../../widgets/app_section_title.dart';
import '../app_project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: ' SOME THINGS I HAVE BUILT'),
        AppSpacings.desktopTitleSpacing,
        AppProjectCard(
          image: 'assets/images/growth sprout poster.png',
          title: 'Growth Sprout',
          url: AppStrings.growthSproutLink,
          color: AppColors.greenWhite,
          tags: ['Mobile', 'UI/UX', 'Serverless'],
          icon: 'assets/images/growth sprout icon.png',
          features: [
            [EvaIcons.clockOutline, 'Flexible'],
            [EvaIcons.playCircleOutline, 'Video Lessons'],
            [EvaIcons.activityOutline, 'Streaming'],
            [EvaIcons.downloadOutline, 'Download Materials'],
          ],
          number: '01.',
          subTitle: 'E-Learning Platform',
          desc: AppStrings.growthSproutDesc,
        ),
        AppProjectCard(
          image: 'assets/images/expentrix poster.png',
          title: 'Expentrix',
          url: AppStrings.expentrixLink,

          isReversed: true,
          color: AppColors.blueWhite,
          icon: 'assets/images/Expentrix.png',
          tags: ['Mobile', 'UI/UX', 'Cross-Platform'],
          features: [
            [EvaIcons.folderOutline, 'Expense Management'],
            [EvaIcons.trendingUp, 'Detailed Insights'],
            [EvaIcons.barChart2Outline, 'Analytics'],
            [EvaIcons.downloadOutline, 'Export Data'],
          ],
          desc: AppStrings.expentrixDesc,
          number: '02.',
          subTitle: 'Expense Tracker.',
        ),
        AppProjectCard(
          image: 'assets/images/wordle poster.jpg',
          title: 'Wordle',
          color: AppColors.blueWhite2,
          url: AppStrings.wordleLink,

          tags: ['Mobile', 'UI/UX', 'Cross-Platform'],
          icon: 'assets/images/wordle icon.png',
          features: [
            [EvaIcons.checkmarkCircle, 'Variable Word Length'],
            [EvaIcons.wifiOffOutline, 'Offline'],
            [EvaIcons.awardOutline, 'High Scores'],
            [EvaIcons.questionMarkCircleOutline, 'Hints'],
          ],
          number: '03.',
          desc: AppStrings.wordleDesc,
          subTitle: 'Offline Wordle Game.',
        ),
        AppProjectCard(
          image: 'assets/images/unity source.jpeg',
          title: 'Unity Source',
          url: AppStrings.unitySourceLink,

          color: AppColors.greenWhite2,
          isReversed: true,
          tags: ['Web', 'Backend'],
          features: [
            [EvaIcons.peopleOutline, 'Personnel Management'],
            [EvaIcons.trendingUpOutline, 'Sales Management'],
            [EvaIcons.cubeOutline, 'Stock Management'],
            [EvaIcons.barChart2Outline, 'Analytics'],
          ],
          number: '04.',
          desc: AppStrings.unitySourceDesc,
          subTitle: 'E-Commerce Website.',
        ),
      ],
    );
  }
}
