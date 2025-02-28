/*
Template for State Management

- Define state management logic here (e.g., AttendanceProvider).
- Example:

import 'package:flutter/material.dart';
import 'package:school_attendance/domain/usecases/get_student_by_fingerprint.dart';
import 'package:school_attendance/domain/entities/student.dart';

  class AttendanceProvider with ChangeNotifier {
    final GetStudentByFingerprint getStudentByFingerprint;

    AttendanceProvider({required this.getStudentByFingerprint});

    bool isLoading = false;
    Student? student;

    Future<void> fetchStudent(String fingerprint) async {
      isLoading = true;
      notifyListeners();

      student = await getStudentByFingerprint(fingerprint);

      isLoading = false;
      notifyListeners();
    }
  }
*/



