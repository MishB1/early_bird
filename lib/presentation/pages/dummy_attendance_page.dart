import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'dart:io' show Platform;
import 'package:provider/provider.dart';
import '../../data/datasources/fingerprint_data_source.dart';
import '../../data/datasources/student_data.dart';
import '../../data/local_storage/hive_helper.dart';
import '../../data/models/student_model.dart';
import '../../data/respositories/student_repository_impl.dart';
import '../../domain/usecases/get_student_by_fingerprint.dart';
import '../providers/attendance_provider.dart';


void main() async {
  // Ensure Flutter binding is initialized before running the app.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage.
  await Hive.initFlutter();
  await Hive.openBox('students');

  // Insert dummy student data into the Hive box for testing.
  await StudentStorage.addStudents(
    StudentData.dummyStudents
        .map((student) => student[StudentModel.model] as Map<String, dynamic>)
        .toList(),
  );

  // Initialize dependencies for the application.
  final fingerprintDataSource = MockFingerprintDataSource(); // Mock data source for testing.
  final studentRepository = StudentRepositoryImpl(fingerprintDataSource: fingerprintDataSource);
  final getStudentByFingerprint = GetStudentByFingerprint(repository: studentRepository);

  // Check if the platform is desktop before running the app
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    runApp(
      MaterialApp(
        home: ChangeNotifierProvider(
          // Provide the AttendanceProvider to the widget tree.
          create: (_) => AttendanceProvider(getStudentByFingerprint: getStudentByFingerprint),
          child: MyApp(),
        ),
      ),
    );
  } else {
    print('This app is designed to run only on desktop platforms.');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  // Sample student data
  final String studentImage = 'https://via.placeholder.com/150'; // Replace with actual image URL
  final String studentId = '123456';
  final String studentName = 'John Doe';
  final String studentClass = 'Class 10A';
  final String studentGrade = 'A+';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        centerTitle: true,
      ),
      body: Center(
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
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 800, // Maximum width for the card on large screens
              ),
              child: Card(
                elevation: 10,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: _buildDesktopLayout(provider),
                ),
              ),
            );
          },
        )

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Fetch student data using the AttendanceProvider.
          await Provider.of<AttendanceProvider>(context, listen: false).fetchStudent();
        },
        child: Icon(Icons.fingerprint), // Fingerprint icon to indicate scanning.
      ),
    );
  }

  // Layout optimized for desktop screens
  Widget _buildDesktopLayout(AttendanceProvider provider) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Student Image
        CircleAvatar(
          radius: 80,
          backgroundImage:  NetworkImage(provider.studentData!['image']),
        ),
        SizedBox(width: 40),
        // Student Details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Student ID
              Text(
                'Student ID: ${provider.studentData!['id']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10),
              // Student Name
              Text(
                provider.studentData!['name'],
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              // Student Class
              Text(
                provider.studentData!['class'],
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              // Student Grade
              Chip(
                label: Text(
                  provider.studentData!['grade'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}