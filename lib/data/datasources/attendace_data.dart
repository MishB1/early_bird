import '../models/attendance_model.dart';

class AttendanceData {
  //---------------------------------------------------------
  // Dummy Attendance Records
  static List<Map<dynamic, dynamic>> dummyAttendance = [
    {
      AttendanceModel.model: {
        AttendanceModel.classType: AttendanceModel.classAttendance,
        AttendanceModel.attendanceStudentId: "1001",
        AttendanceModel.attendanceArrivalTime: "2024-09-23 07:45:00",
        AttendanceModel.attendanceBonusPoints: 1,
      },
    },
    {
      AttendanceModel.model: {
        AttendanceModel.classType: AttendanceModel.classAttendance,
        AttendanceModel.attendanceStudentId: "1002",
        AttendanceModel.attendanceArrivalTime: "2024-09-23 08:15:00",
        AttendanceModel.attendanceBonusPoints: 0,
      },
    },
  ];
}