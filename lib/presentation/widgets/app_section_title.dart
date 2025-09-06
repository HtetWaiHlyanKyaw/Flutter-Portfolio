import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AppSectionTitle extends StatelessWidget {
  final String title;
  const AppSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: 24,
          decoration: BoxDecoration(gradient: AppColors.primaryWhite),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.black, // border color
              ),
            ),
          ),

          child: Text(
            title,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              height: 32 / 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
