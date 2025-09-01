import 'package:flutter/material.dart';
import '../../../core/constants/app_spacings.dart';
import '../../../core/constants/app_strings.dart';
import '../../widgets/app_section_title.dart';
import '../app_profile_image_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'GETTING TO KNOW ME'),
        AppSpacings.desktopTitleSpacing,

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 160),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // keeps text top-aligned with image
            children: [
              AppProfileImageCard(),
              const SizedBox(width: 32),
              Expanded(child: AboutText()),
            ],
          ),
        ),
      ],
    );
  }
}
