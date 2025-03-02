import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';
import '../../data/models/student_model.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance')),
      body: Center(
        child: Consumer<AttendanceProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return CircularProgressIndicator();
            }
            if (provider.studentData == null) {
              return Text('No student data found');
            }
            return Column(
              children: [
                Text('Student ID: ${provider.studentData![StudentModel.studentId]}'),
                Text('Student Name: ${provider.studentData![StudentModel.studentName]}'),
                Text('Student Image: ${provider.studentData![StudentModel.studentImage]}'),
                Text('Student Class: ${provider.studentData![StudentModel.studentClass]}'),
              ],
            );
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