import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'data/datasources/fingerprint_data_source.dart';
import 'data/datasources/student_data.dart';
import 'data/local_storage/hive_helper.dart';
import 'data/models/student_model.dart';
import 'data/respositories/student_repository_impl.dart';
import 'domain/usecases/get_student_by_fingerprint.dart';
import 'presentation/pages/attendance_page.dart';
import 'presentation/providers/attendance_provider.dart';

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

  // Run the app with the AttendancePage as the home screen.
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        // Provide the AttendanceProvider to the widget tree.
        create: (_) => AttendanceProvider(getStudentByFingerprint: getStudentByFingerprint),
        child: AttendancePage(),
      ),
    ),
  );
}