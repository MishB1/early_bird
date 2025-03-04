import 'package:hive/hive.dart';

class StudentStorage {
  // Name of the Hive box used to store student data
  static const String _studentBox = 'students';

  // Adds a student to the Hive box using their ID as the key
  static Future<void> addStudent(Map<String, dynamic> student) async {
    final box = await Hive.openBox(_studentBox);
    await box.put(student['id'], student);
  }

  // Retrieves a student by their ID from the Hive box
  static Future<Map<String, dynamic>?> getStudent(String id) async {
    final box = await Hive.openBox(_studentBox);
    return box.get(id);
  }

  // Retrieves a student by their fingerprint template
  static Future<Map<String, dynamic>?> getStudentByFingerprintTemplate(String template) async {
    final box = await Hive.openBox(_studentBox);
    final students = box.values.toList();
    // Search for a student with a matching fingerprint template
    for (var student in students) {
      if (student['fingerprint_template'] == template) {
        return student;
      }
    }
    return null; // Return null if no match is found
  }

  // Adds multiple students to the Hive box (useful for adding dummy data)
  static Future<void> addStudents(List<Map<String, dynamic>> students) async {
    final box = await Hive.openBox(_studentBox);
    for (var student in students) {
      await box.put(student['id'], student);
    }
  }
}