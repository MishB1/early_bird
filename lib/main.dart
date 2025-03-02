import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/respositories/student_repository_impl.dart';
import 'presentation/pages/attendance_page.dart';
import 'presentation/providers/attendance_provider.dart';
import 'data/datasources/fingerprint_data_source.dart';
import 'domain/usecases/get_student_by_fingerprint.dart';

void main() {
  // Initialize dependencies
  final fingerprintDataSource = MockFingerprintDataSource();
  final studentRepository = StudentRepositoryImpl(fingerprintDataSource: fingerprintDataSource);
  final getStudentByFingerprint = GetStudentByFingerprint(repository: studentRepository); // Add repository parameter

  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => AttendanceProvider(getStudentByFingerprint: getStudentByFingerprint),
        child: AttendancePage(),
      ),
    ),
  );
}