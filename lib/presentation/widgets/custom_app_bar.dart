import 'package:flutter/material.dart';
import 'package:new_portfolio/core/constants/app_box_shadows.dart';
import 'package:new_portfolio/core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [AppBoxShadows.purpleShadow],
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'hwhk.',
                style: TextStyle(
                  fontSize: 32,
                  height: 40 / 32,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary, // AppColors.primary
                ),
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80); // height of appbar
}
