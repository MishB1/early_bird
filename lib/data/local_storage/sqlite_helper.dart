/*
Template for Local Storage (SQLite)

- Define SQLite helper methods here.
- Example:

  import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:school_attendance/data/models/student_model.dart';

class SQLiteHelper {
  Future<Database> initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'students.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE students(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            fingerprintTemplate TEXT,
            imagePath TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertStudent(StudentModel student) async {
    final db = await initDatabase();
    await db.insert('students', student.toMap());
  }
}
*/
