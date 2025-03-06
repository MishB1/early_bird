import 'package:flutter/material.dart';

class CustomSliverAnimatedOpacity extends StatelessWidget {
  final Widget child;
  final double opacity;

  const CustomSliverAnimatedOpacity({
    required this.child,
    this.opacity = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 300),
      sliver: child,
    );
  }
}