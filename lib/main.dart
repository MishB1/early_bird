import 'package:early_bird/presentation/theme/app_theme.dart';
import 'package:early_bird/presentation/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'data/datasources/fingerprint_data_source.dart';
import 'data/datasources/student_data.dart';
import 'data/local_storage/hive_helper.dart';
import 'data/models/student_model.dart';
import 'data/respositories/student_repository_impl.dart';
import 'domain/usecases/get_student_by_fingerprint.dart';
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
  final fingerprintDataSource =
      MockFingerprintDataSource(); // Mock data source for testing.
  final studentRepository = StudentRepositoryImpl(
    fingerprintDataSource: fingerprintDataSource,
  );
  final getStudentByFingerprint = GetStudentByFingerprint(
    repository: studentRepository,
  );

  runApp(MyApp(getStudentByFingerprint: getStudentByFingerprint));
}

class MyApp extends StatelessWidget {
  final GetStudentByFingerprint getStudentByFingerprint;

  const MyApp({required this.getStudentByFingerprint, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Early Bird",
      theme: earlyBirdTheme,
      home: ChangeNotifierProvider(
        // Provide the AttendanceProvider to the widget tree.
        create:
            (_) => AttendanceProvider(
              getStudentByFingerprint: getStudentByFingerprint,
            ),
        child: TabBarController(),
      ),
    );
  }
}
