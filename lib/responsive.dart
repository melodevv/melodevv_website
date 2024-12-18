import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // if width bigger or equal to 1100 we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // if width less than 1100 and more than 850 we consider it a tablet
    else if (size.width >= 850) {
      return tablet;
    }
    // or less than that we call it mobile
    else {
      return mobile;
    }
  }
}
