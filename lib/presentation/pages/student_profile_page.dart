import 'package:early_bird/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';
import '../widgets/student_details_widget.dart';

class StudentProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.earlyBird_student_attendance_system),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<AttendanceProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return CircularProgressIndicator();
            }
            if (provider.studentData == null) {
              return Text(AppConstants.scan_your_finger);
            }
            return StudentDetailsWidget(student: provider.studentData!);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Provider.of<AttendanceProvider>(context, listen: false).fetchStudent();
        },
        child: Icon(Icons.fingerprint),
      ),
    );
  }
}