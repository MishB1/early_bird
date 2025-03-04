import 'package:flutter/material.dart';
import '../../domain/usecases/get_student_by_fingerprint.dart';

// Provider class to manage attendance-related state and logic.
class AttendanceProvider with ChangeNotifier {
  // Dependency: Use case to fetch student data by fingerprint.
  final GetStudentByFingerprint getStudentByFingerprint;

  // Constructor to inject the required use case.
  AttendanceProvider({required this.getStudentByFingerprint});

  // Loading state to indicate if data is being fetched.
  bool isLoading = false;

  // Holds the fetched student data.
  Map<String, dynamic>? studentData;

  // Fetches student data using the fingerprint scanning use case.
  Future<void> fetchStudent() async {
    isLoading = true; // Set loading state to true.
    notifyListeners(); // Notify listeners to update the UI.

    try {
      // Fetch student data using the injected use case.
      studentData = await getStudentByFingerprint();
    } catch (e) {
      // Handle errors and reset student data if fetching fails.
      print('Error fetching student: $e');
      studentData = null;
    }

    isLoading = false; // Set loading state to false.
    notifyListeners(); // Notify listeners to update the UI.
  }
}