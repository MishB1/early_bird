import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final TabController? controller;

  const CustomTabBar({
    required this.tabs,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: tabs.map((String tab) {
        return Tab(text: tab);
      }).toList(),
    );
  }
}