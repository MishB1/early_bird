/*
Template for Pages/Screens

- Define app screens here (e.g., AttendancePage).
- Example:

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_attendance/presentation/providers/attendance_provider.dart';
import 'package:school_attendance/core/constants/app_strings.dart';

  class AttendancePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(AppStrings.appName)),
        body: Center(
          child: Consumer<AttendanceProvider>(
            builder: (context, provider, child) {
              if (provider.isLoading) {
                return CircularProgressIndicator();
              }
              return Text(provider.student?.name ?? 'No student found');
            },
          ),
        ),
      );
    }
  }
*/


