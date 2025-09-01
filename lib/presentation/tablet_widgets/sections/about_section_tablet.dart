import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../../../core/constants/app_strings.dart';
import '../../desktop_widgets/app_profile_image_card.dart';
import '../../widgets/app_section_title.dart';

class AboutSectionTablet extends StatelessWidget {
  const AboutSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'GETTING TO KNOW ME'),
        AppSpacings.desktopTitleSpacing,

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // keeps text top-aligned with image
            children: [
              SizedBox(width: 200, child: AppProfileImageCard()),
              const SizedBox(width: 32),
              Expanded(child: AboutText()),
            ],
          ),
        ),
      ],
    );
  }
}
