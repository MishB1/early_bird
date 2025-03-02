import 'package:flutter/material.dart';
import '../../domain/usecases/get_student_by_fingerprint.dart';

class AttendanceProvider with ChangeNotifier {
  final GetStudentByFingerprint getStudentByFingerprint;

  AttendanceProvider({required this.getStudentByFingerprint});

  bool isLoading = false;
  Map<String, dynamic>? studentData;

  Future<void> fetchStudent() async {
    isLoading = true;
    notifyListeners();

    try {
      studentData = await getStudentByFingerprint();
    } catch (e) {
      print('Error fetching student: $e');
      studentData = null; // Handle errors gracefully
    }

    isLoading = false;
    notifyListeners();
  }
}