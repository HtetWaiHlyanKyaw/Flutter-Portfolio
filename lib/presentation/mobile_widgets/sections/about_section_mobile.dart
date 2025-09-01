import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_strings.dart';
import '../../../core/constants/app_colors.dart';
import '../../widgets/app_section_title.dart';
import '../app_profile_image_card_mobile.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'GETTING TO KNOW ME'),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AboutText(),
        ),
      ],
    );
  }
}
