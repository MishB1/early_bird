import '../../domain/repositories/student_repository.dart';
import '../datasources/fingerprint_data_source.dart';
import '../datasources/student_data.dart';
import '../models/student_model.dart';

class StudentRepositoryImpl implements StudentRepository {
  final FingerprintDataSource fingerprintDataSource;

  StudentRepositoryImpl({required this.fingerprintDataSource});

  @override
  Future<Map<String, dynamic>> getStudentByFingerprint() async {
    final studentId = await fingerprintDataSource.scanFingerprint();
    return getStudentById(studentId);
  }

  Future<Map<String, dynamic>> getStudentById(String studentId) async {
    // Fetch student from local database or sample data
    for (var student in StudentData.dummyStudents) {
      if (student[StudentModel.model][StudentModel.studentId] == studentId) {
        return student[StudentModel.model]; // Return the student data as a Map
      }
    }
    throw Exception('Student not found');
  }
}