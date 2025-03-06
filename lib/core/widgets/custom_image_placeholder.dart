import 'package:flutter/material.dart';

class CustomImagePlaceholder extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const CustomImagePlaceholder({
    this.width = 100.0,
    this.height = 100.0,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Icon(Icons.image, color: Colors.white),
    );
  }
}