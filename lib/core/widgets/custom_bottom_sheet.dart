import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const CustomBottomSheet({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => this,
    );
  }
}