import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/attendance_provider.dart';

// Page to display attendance information for a student.
class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance')),
      body: Center(
        // Use Consumer to listen for changes in the AttendanceProvider.
        child: Consumer<AttendanceProvider>(
          builder: (context, provider, child) {
            // Show a loading indicator while data is being fetched.
            if (provider.isLoading) {
              return CircularProgressIndicator();
            }
            // Display a message if no student data is found.
            if (provider.studentData == null) {
              return Text('No student data found');
            }
            // Display student details if data is available.
            return Column(
              children: [
                Text('Student ID: ${provider.studentData!['id']}'),
                Text('Student Name: ${provider.studentData!['name']}'),
                // Uncomment to display student image:
                // Image.network(provider.studentData!['image']),
                Text('Class: ${provider.studentData!['class']}'),
                Text('Grade: ${provider.studentData!['grade']}'),
              ],
            );
          },
        ),
      ),
      // Floating action button to trigger student data fetching.
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Fetch student data using the AttendanceProvider.
          await Provider.of<AttendanceProvider>(context, listen: false).fetchStudent();
        },
        child: Icon(Icons.fingerprint), // Fingerprint icon to indicate scanning.
      ),
    );
  }
}