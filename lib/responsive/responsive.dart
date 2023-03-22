import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget tabletScaffold;
  final Widget mobileScaffold;
  final Widget desktopScaffold;

  const Responsive(
      {super.key,
      required this.tabletScaffold,
      required this.mobileScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
