import 'package:flutter/material.dart';

class CustomSliverAnimatedList extends StatelessWidget {
  final List<Widget> children;
  final GlobalKey<AnimatedListState> listKey;

  const CustomSliverAnimatedList({
    required this.children,
    required this.listKey,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      key: listKey,
      initialItemCount: children.length,
      itemBuilder: (context, index, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: children[index],
        );
      },
    );
  }
}