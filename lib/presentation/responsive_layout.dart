import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget tablet;
  const ResponsiveLayout({
    super.key,
    required this.tablet,
    required this.desktop,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1040) {
          return desktop;
        } else if (constraints.maxWidth >= 640) {
          return tablet;
        } else if (constraints.maxWidth >= 360) {
          return mobile;
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Sorry, this website is not available for devices smaller than screen size of 360.',
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
