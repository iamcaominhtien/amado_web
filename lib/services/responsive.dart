import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.desktop,
      required this.mobile,
      required this.tablet})
      : super(key: key);
  final Widget desktop;
  final Widget mobile;
  final Widget tablet;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 540;

  static bool isTabletLargest(BuildContext context) =>
      // MediaQuery.of(context).size.width < 1100 &&
      // MediaQuery.of(context).size.width >= 870;
      MediaQuery.of(context).size.width < 1100;

  static bool isTabletMedian(BuildContext context) =>
      // MediaQuery.of(context).size.width < 870 &&
      // MediaQuery.of(context).size.width >= 760;
      MediaQuery.of(context).size.width < 870;

  static bool isTabletSmallest(BuildContext context) =>
      // MediaQuery.of(context).size.width < 760 &&
      // MediaQuery.of(context).size.width >= 540;
      MediaQuery.of(context).size.width < 760;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        return mobile;
      },
    );
  }
}
