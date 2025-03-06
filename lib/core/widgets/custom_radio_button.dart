import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final String label;
  final dynamic value;
  final dynamic groupValue;
  final ValueChanged<dynamic> onChanged;

  const CustomRadioButton({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(label),
      ],
    );
  }
}