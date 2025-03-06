import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Widget header;
  final List<Widget> items;

  const CustomDrawer({
    required this.header,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          header,
          ...items,
        ],
      ),
    );
  }
}