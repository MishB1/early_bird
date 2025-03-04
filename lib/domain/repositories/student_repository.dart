// Abstract class defining the contract for student-related operations.
abstract class StudentRepository {
  // Retrieves a student's data by scanning their fingerprint.
  Future<Map<String, dynamic>> getStudentByFingerprint();
}