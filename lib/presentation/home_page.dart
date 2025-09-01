import 'package:flutter/material.dart';
import 'package:new_portfolio/presentation/desktop_home.dart';
import 'package:new_portfolio/presentation/mobile_home.dart';
import 'package:new_portfolio/presentation/responsive_layout.dart';
import 'package:new_portfolio/presentation/tablet_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: DesktopHome(),
      mobile: MobileHome(),
      tablet: TabletHome(),
    );
  }
}
