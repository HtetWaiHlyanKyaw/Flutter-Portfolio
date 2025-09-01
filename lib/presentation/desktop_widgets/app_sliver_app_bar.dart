import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_box_shadows.dart';
import '../../core/constants/app_colors.dart';

class AppSliverAppBar extends StatefulWidget {
  final void Function(String section) onNavItemSelected;

  const AppSliverAppBar({super.key, required this.onNavItemSelected});

  @override
  State<AppSliverAppBar> createState() => _AppSliverAppBarState();
}

class _AppSliverAppBarState extends State<AppSliverAppBar> {
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
              padding: const EdgeInsets.symmetric(horizontal: 102),
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
                    Row(
                      children: [
                        Text(
                          'hwhk.',
                          style: TextStyle(
                            fontSize: 40,
                            height: 48 / 40,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(width: 64),
                        Row(
                          children: [
                            NavItem(
                              title: 'About',
                              onTap: () => widget.onNavItemSelected('About'),
                            ),
                            const SizedBox(width: 32),
                            NavItem(
                              title: 'Skills',
                              onTap: () => widget.onNavItemSelected('Skills'),
                            ),
                            const SizedBox(width: 32),
                            NavItem(
                              title: 'Projects',
                              onTap: () => widget.onNavItemSelected('Projects'),
                            ),
                            const SizedBox(width: 32),
                            NavItem(
                              title: 'Education',
                              onTap: () =>
                                  widget.onNavItemSelected('Education'),
                            ),
                          ],
                        ),
                      ],
                    ),

                    OutlinedButton(
                      onPressed: () {
                        _launchUrl(
                          'https://drive.google.com/file/d/18MqA5XAr5gXxIWlSWxzYtOKBRP_Hl2Lh/view?usp=sharing',
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.gray),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 8,
                        ),
                        child: Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: 16,
                            height: 28 / 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
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
}

class NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const NavItem({super.key, required this.title, required this.onTap});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            height: 32 / 18,
            color: !_isHovered ? AppColors.black : AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
