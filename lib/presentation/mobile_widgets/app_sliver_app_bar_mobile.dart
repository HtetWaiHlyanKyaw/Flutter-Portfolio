import 'package:flutter/material.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppSliverAppBarMobile extends StatefulWidget {
  final void Function(String section) onNavItemSelected;
  const AppSliverAppBarMobile({super.key, required this.onNavItemSelected});

  @override
  State<AppSliverAppBarMobile> createState() => _AppSliverAppBarMobileState();
}

class _AppSliverAppBarMobileState extends State<AppSliverAppBarMobile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,

      elevation: 0,
      toolbarHeight: 80,
      flexibleSpace: MouseRegion(
        onEnter: (_) => setState(() {
          _isHovered = true;
        }),
        onExit: (_) => setState(() {
          _isHovered = false;
        }),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  _isHovered
                      ? AppBoxShadows.purpleShadowHovered
                      : AppBoxShadows.purpleShadow,
                ],
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'hwhk.',
                    style: TextStyle(
                      fontSize: 32,
                      height: 40 / 32,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  // PopupMenuButton<String>(
                  //   onSelected: (value) {},
                  //   itemBuilder: (context) => [
                  //     PopupMenuItem(
                  //       value: 'About',
                  //       child: Text(
                  //         'About',
                  //         style: TextStyle(
                  //           color: AppColors.black,
                  //           fontSize: 16,
                  //           height: 28 / 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 'Skills',
                  //       child: Text(
                  //         'Skills',
                  //         style: TextStyle(
                  //           color: AppColors.black,
                  //           fontSize: 16,
                  //           height: 28 / 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 'Projects',
                  //       child: Text(
                  //         'Projects',
                  //         style: TextStyle(
                  //           color: AppColors.black,
                  //           fontSize: 16,
                  //           height: 28 / 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 'Education',
                  //       child: Text(
                  //         'Education',
                  //         style: TextStyle(
                  //           color: AppColors.black,
                  //           fontSize: 16,
                  //           height: 28 / 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  //   icon: Icon(Icons.menu),
                  // ),
                  PopupMenuButton<String>(
                    onSelected: (value) {},
                    color: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: AppColors.gray),
                    ),
                    itemBuilder: (context) => [
                      _buildNav(
                        'About',
                        () => widget.onNavItemSelected('About'),
                      ),
                      _buildNav(
                        'Skills',
                        () => widget.onNavItemSelected('Skills'),
                      ),
                      _buildNav(
                        'Projects',
                        () => widget.onNavItemSelected('Projects'),
                      ),
                      _buildNav(
                        'Education',
                        () => widget.onNavItemSelected('Education'),
                      ),

                      // _buildMenuItem('About'),
                      // _buildMenuItem('Skills'),
                      // _buildMenuItem('Projects'),
                      // _buildMenuItem('Education'),
                    ],
                    icon: const Icon(Icons.menu, color: AppColors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildNav(String title, VoidCallback onTap) {
    return PopupMenuItem(
      value: title,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            height: 28 / 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
