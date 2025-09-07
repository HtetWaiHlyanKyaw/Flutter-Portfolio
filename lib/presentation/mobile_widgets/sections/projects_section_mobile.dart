import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/presentation/mobile_widgets/app_project_card_mobile.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../../widgets/app_section_title.dart';

class ProjectsSectionMobile extends StatelessWidget {
  const ProjectsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'SOME THINGS I HAVE BUILT'),
        SizedBox(height: 32),
        AppProjectCardMobile(
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
        AppProjectCardMobile(
          image: 'assets/images/expentrix poster.png',
          title: 'Expentrix',
          url: AppStrings.expentrixLink,

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

        AppProjectCardMobile(
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

        AppProjectCardMobile(
          image: 'assets/images/unity source.jpeg',
          title: 'Unity Source',
          url: AppStrings.unitySourceLink,

          color: AppColors.greenWhite2,
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
