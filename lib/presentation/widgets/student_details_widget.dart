import 'package:early_bird/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class StudentDetailsWidget extends StatelessWidget {
  final Map<String, dynamic> student;

  const StudentDetailsWidget({required this.student});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: AppConstants.width800),
      child: Card(
        elevation: AppConstants.elevationCard10,
        margin: EdgeInsets.all(AppConstants.marginXXL),
        shape: RoundedRectangleBorder(borderRadius: AppConstants.radiusXL),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.paddingXXL),
          child: _buildDesktopLayout(context),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: AppConstants.circleRadius80,
          backgroundImage: NetworkImage(student['image']),
        ),
        SizedBox(width: AppConstants.width40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Student ID: ${student['id']}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: AppConstants.height10),
              Text(
                student['name'],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppConstants.height10),
              Text(
                student['class'],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: AppConstants.height10),
              Chip(
                label: Text(student['grade']),
                backgroundColor: Theme.of(context).chipTheme.backgroundColor,
                labelStyle: Theme.of(context).chipTheme.labelStyle,
                shape: Theme.of(context).chipTheme.shape,
                padding: Theme.of(context).chipTheme.padding,
              )
            ],
          ),
        ),
      ],
    );
  }
}