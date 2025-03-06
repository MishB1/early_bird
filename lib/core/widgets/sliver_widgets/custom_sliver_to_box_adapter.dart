import 'package:flutter/material.dart';

class CustomSliverToBoxAdapter extends StatelessWidget {
  final Widget child;

  const CustomSliverToBoxAdapter({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: child,
    );
  }
}