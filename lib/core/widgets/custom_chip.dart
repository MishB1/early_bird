import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Color color;

  const CustomChip({
    required this.label,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: color,
      labelStyle: TextStyle(color: Colors.white),
    );
  }
}