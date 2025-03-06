import 'package:flutter/material.dart';

class CustomCircularProgressBar extends StatelessWidget {
  final double size;
  final Color color;

  const CustomCircularProgressBar({
    this.size = 24.0,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}