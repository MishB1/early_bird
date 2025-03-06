import 'package:flutter/material.dart';

class CustomSegmentedButton extends StatelessWidget {
  final List<String> options;
  final String selectedOption;
  final Function(String) onSelectionChanged;

  const CustomSegmentedButton({
    required this.options,
    required this.selectedOption,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      segments: options.map((option) {
        return ButtonSegment<String>(
          value: option,
          label: Text(option),
        );
      }).toList(),
      selected: {selectedOption},
      onSelectionChanged: (Set<String> newSelection) {
        onSelectionChanged(newSelection.first);
      },
    );
  }
}