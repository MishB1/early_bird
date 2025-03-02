/*
Template for Student Repository

- Define abstract methods for student-related operations.

*/

abstract class StudentRepository {
  Future<Map<String, dynamic>> getStudentByFingerprint();
}
