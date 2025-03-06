import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  final Widget child;

  const CustomGridTile({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: child,
    );
  }
}