import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget webScreenlayout;
  final Widget MobileScreenlayout;
  const responsiveLayout(
      {super.key,
      required this.webScreenlayout,
      required this.MobileScreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //web scree
          return webScreenlayout;
        }
        //mobile screen
        return MobileScreenlayout;
      },
    );
  }
}
