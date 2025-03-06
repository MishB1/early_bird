import 'package:flutter/material.dart';

class CustomTabBarView extends StatelessWidget {
  final List<Widget> children;
  final TabController? controller;

  const CustomTabBarView({
    required this.children,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: children,
    );
  }
}