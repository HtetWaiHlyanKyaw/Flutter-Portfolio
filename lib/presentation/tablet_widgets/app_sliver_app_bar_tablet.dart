import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppSliverAppBarTablet extends StatefulWidget {
  final void Function(String section) onNavItemSelected;

  const AppSliverAppBarTablet({super.key, required this.onNavItemSelected});

  @override
  State<AppSliverAppBarTablet> createState() => _AppSliverAppBarTabletState();
}

class _AppSliverAppBarTabletState extends State<AppSliverAppBarTablet> {
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
      toolbarHeight: 160,
      flexibleSpace: MouseRegion(
        onEnter: (_) => setState(() {
          _isHovered = true;
        }),
        onExit: (_) => setState(() {
          _isHovered = false;
        }),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 48,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    !_isHovered
                        ? AppBoxShadows.purpleShadow
                        : AppBoxShadows.purpleShadowHovered,
                  ],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'hwhk.',
                      style: TextStyle(
                        fontSize: 40,
                        height: 48 / 40,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
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
                      ],
                      icon: const Icon(
                        Icons.menu,
                        color: AppColors.black,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  PopupMenuItem<String> _buildNav(String title, VoidCallback onTap) {
    bool _isHoveredNav = false;
    return PopupMenuItem(
      onTap: onTap,
      value: title,
      child: MouseRegion(
        onEnter: (_) => setState(() {
          _isHoveredNav = true;
        }),
        onExit: (_) => setState(() {
          _isHoveredNav = false;
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              height: 28 / 16,
              fontWeight: FontWeight.w600,
              color: _isHoveredNav ? AppColors.primary : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
