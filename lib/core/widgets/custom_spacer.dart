import 'package:flutter/material.dart';

class CustomSpacer extends StatelessWidget {
  final double height;
  final double width;

  const CustomSpacer({
    this.height = 16.0,
    this.width = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}