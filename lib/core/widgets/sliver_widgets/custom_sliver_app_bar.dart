import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final Widget? flexibleSpace;

  const CustomSliverAppBar({
    required this.title,
    this.flexibleSpace,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title),
      flexibleSpace: flexibleSpace,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
    );
  }
}