/*
Template for Data Models

- Define data models for the app (e.g., Student, Attendance, Class).
- Example:
  static const String classStudent = "student";
  static const String studentName = "name";
*/

class StudentModel {
  //----------------------------------------------------------
  // Model type definition
  static const String model = "model";
  static const String classType = "class_type";

  //----------------------------------------------------------
  // Student model
  static const String classStudent = "student";
  static const String studentId = "id";
  static const String studentName = "name";
  static const String studentImage = "image";
  static const String studentClass = "class";
  static const String studentGrade = "grade";
  static const String studentFingerprintTemplate = "fingerprint_template";

  //----------------------------------------------------------
  // Student key list
  static Map<dynamic, dynamic> studentKeyList = {
    StudentModel.classType: StudentModel.classStudent,
    StudentModel.studentId: "",
    StudentModel.studentName: "",
    StudentModel.studentImage: "",
    StudentModel.studentClass: "",
    StudentModel.studentGrade: "",
    StudentModel.studentFingerprintTemplate: "",
  };
}
