class AttendanceModel {
  //----------------------------------------------------------
  // Model type definition
  static const String model = "model";
  static const String classType = "class_type";

  // Attendance model
  static const String classAttendance = "attendance";
  static const String attendanceStudentId = "student_id";
  static const String attendanceArrivalTime = "arrival_time";
  static const String attendanceBonusPoints = "bonus_points";

  // Attendance key list
  static Map<dynamic, dynamic> attendanceKeyList = {
    AttendanceModel.classType: AttendanceModel.classAttendance,
    AttendanceModel.attendanceStudentId: "",
    AttendanceModel.attendanceArrivalTime: "",
    AttendanceModel.attendanceBonusPoints: 0,
  };
}
