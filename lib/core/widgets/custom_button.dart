/*
Template for Reusable Widgets

- Define reusable widgets here (e.g., CustomButton).
- Example:
  class CustomButton extends StatelessWidget {
    final String text;
    final VoidCallback onPressed;

    CustomButton({required this.text, required this.onPressed});

    @override
    Widget build(BuildContext context) {
      return ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      );
    }
  }
*/

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}