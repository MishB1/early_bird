import '../repositories/student_repository.dart';

// Use case class for retrieving a student by their fingerprint.
class GetStudentByFingerprint {
  // Dependency: StudentRepository to fetch student data.
  final StudentRepository repository;

  // Constructor to inject the required StudentRepository.
  GetStudentByFingerprint({required this.repository});

  // Executes the use case to retrieve a student by fingerprint.
  Future<Map<String, dynamic>> call() async {
    return repository.getStudentByFingerprint();
  }
}