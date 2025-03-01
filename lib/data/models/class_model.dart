class ClassModel {
  //----------------------------------------------------------
  // Model type definition
  static const String model = "model";
  static const String classType = "class_type";

  // Class model
  static const String classClass = "class";
  static const String className = "name";
  static const String classGrade = "grade";

  // Class key list
  static Map<dynamic, dynamic> classKeyList = {
    ClassModel.classType: ClassModel.classClass,
    ClassModel.className: "",
    ClassModel.classGrade: "",
  };
}
