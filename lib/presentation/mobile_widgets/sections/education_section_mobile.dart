import 'package:flutter/material.dart';
import 'package:new_portfolio/presentation/mobile_widgets/app_education_image_mobile.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../../desktop_widgets/app_education_image.dart';
import '../../widgets/app_section_title.dart';

class EducationSectionMobile extends StatefulWidget {
  const EducationSectionMobile({super.key});

  @override
  State<EducationSectionMobile> createState() => _EducationSectionMobileState();
}

class _EducationSectionMobileState extends State<EducationSectionMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'MY LEARNING JOURNEY'),
        AppSpacings.desktopTitleSpacing,

        Container(
          // decoration: BoxDecoration(gradient: AppColors.purpleBlue),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            // vertical: 32,
          ),
          child: SizedBox(
            height: 360,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: AppEducationImageMobile(
                            title: 'Practising High School',
                            list: [
                              'High School Diploma',
                              'GPA: 3.35 / 4.0',
                              '4 Distinctions',
                            ],
                            image: 'assets/images/high school.jpeg',
                            gradient: AppColors.blueGreen,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: AppEducationImageMobile(
                            title: 'J-PRO Vocational School',
                            list: [
                              'Professional IT Training Course',
                              'ITPEC IP & FE Certifications',
                              'Java, PHP, SQL and More',
                            ],
                            image: 'assets/images/j pro.jpeg',
                            gradient: AppColors.purpleRed,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),

                Expanded(
                  flex: 1,
                  child: AppEducationImageMobile(
                    title: 'University (upcoming)',
                    image: 'assets/images/english together.jpg',
                    gradient: AppColors.redYellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
