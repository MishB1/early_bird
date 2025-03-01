// Define sample data for the app (e.g., students, attendance records).
import '../models/student_model.dart';

class StudentData {
  static List<Map<dynamic, dynamic>> dummyStudents = [
    {
      StudentModel.model: {
        StudentModel.classType: StudentModel.classStudent,
        StudentModel.studentId: "1001",
        StudentModel.studentName: "John Doe",
        StudentModel.studentImage:
        "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
        StudentModel.studentClass: "Class 5A",
        StudentModel.studentGrade: "Grade 5",
        StudentModel.studentFingerprintTemplate: "template_1001",
      },
    },
    {
      StudentModel.model: {
        StudentModel.classType: StudentModel.classStudent,
        StudentModel.studentId: "1002",
        StudentModel.studentName: "Jane Smith",
        StudentModel.studentImage:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",
        StudentModel.studentClass: "Class 5A",
        StudentModel.studentGrade: "Grade 5",
        StudentModel.studentFingerprintTemplate: "template_1002",
      },
    },
  ];
}


