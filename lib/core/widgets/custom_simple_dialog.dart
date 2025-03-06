import 'package:flutter/material.dart';

class CustomSimpleDialog extends StatelessWidget {
  final String title;
  final List<String> options;
  final Function(String) onOptionSelected;

  const CustomSimpleDialog({
    required this.title,
    required this.options,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(title),
      children: options.map((option) {
        return SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context);
            onOptionSelected(option);
          },
          child: Text(option),
        );
      }).toList(),
    );
  }

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => this,
    );
  }
}