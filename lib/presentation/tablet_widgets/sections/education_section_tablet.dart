import 'package:flutter/widgets.dart';
import 'package:new_portfolio/presentation/tablet_widgets/app_education_image_tablet.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacings.dart';
import '../../mobile_widgets/app_education_image_mobile.dart';
import '../../widgets/app_section_title.dart';

class EducationSectionTablet extends StatelessWidget {
  const EducationSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionTitle(title: 'MY LEARNING JOURNEY'),
        AppSpacings.desktopTitleSpacing,

        Container(
          // decoration: BoxDecoration(gradient: AppColors.purpleBlue),
          padding: const EdgeInsets.symmetric(
            horizontal: 64,
            // vertical: 32,
          ),
          child: SizedBox(
            height: 480,
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
                          child: AppEducationImageTablet(
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
                          child: AppEducationImageTablet(
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
                  child: AppEducationImageTablet(
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
