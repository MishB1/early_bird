import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final int count;
  final Color color;

  const CustomBadge({
    required this.count,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Text(
        count.toString(),
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}