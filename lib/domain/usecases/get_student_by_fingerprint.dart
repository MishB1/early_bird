/*
Template for Use Case

- Define the business logic for fetching a student by fingerprint.

*/
import '../repositories/student_repository.dart';

class GetStudentByFingerprint {
  final StudentRepository repository;

  GetStudentByFingerprint({required this.repository});

  Future<Map<String, dynamic>> call() async {
    return repository.getStudentByFingerprint();
  }
}