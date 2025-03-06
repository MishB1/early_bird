import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  final List<Widget> children;

  const CustomSliverList({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return children[index];
        },
        childCount: children.length,
      ),
    );
  }
}