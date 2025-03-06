import 'package:flutter/material.dart';

class CustomPopupMenu extends StatelessWidget {
  final List<String> items;
  final Function(String) onItemSelected;

  const CustomPopupMenu({
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return items.map((item) {
          return PopupMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList();
      },
      onSelected: onItemSelected,
    );
  }
}