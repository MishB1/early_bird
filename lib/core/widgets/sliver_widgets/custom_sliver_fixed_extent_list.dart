import 'package:flutter/material.dart';

class CustomSliverFixedExtentList extends StatelessWidget {
  final List<Widget> children;
  final double itemExtent;

  const CustomSliverFixedExtentList({
    required this.children,
    this.itemExtent = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: itemExtent,
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return children[index];
        },
        childCount: children.length,
      ),
    );
  }
}
