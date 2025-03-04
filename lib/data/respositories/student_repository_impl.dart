import '../../domain/repositories/student_repository.dart';
import '../local_storage/hive_helper.dart';
import '../datasources/fingerprint_data_source.dart';

// Implementation of the StudentRepository interface
class StudentRepositoryImpl implements StudentRepository {
  // Dependency: FingerprintDataSource for scanning fingerprints
  final FingerprintDataSource fingerprintDataSource;

  // Constructor to inject the required FingerprintDataSource
  StudentRepositoryImpl({required this.fingerprintDataSource});

  @override
  Future<Map<String, dynamic>> getStudentByFingerprint() async {
    // Scan the fingerprint to get the fingerprint template
    final fingerprintTemplate = await fingerprintDataSource.scanFingerprint();

    // Fetch the student from Hive using the fingerprint template
    final student = await StudentStorage.getStudentByFingerprintTemplate(fingerprintTemplate);
    if (student != null) {
      return student; // Return the student if found
    }
    // Throw an exception if no student is found for the given fingerprint
    throw Exception('Student not found');
  }
}