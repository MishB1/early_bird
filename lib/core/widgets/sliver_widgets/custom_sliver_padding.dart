import 'package:flutter/material.dart';

class CustomSliverPadding extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;

  const CustomSliverPadding({
    required this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: child,
    );
  }
}