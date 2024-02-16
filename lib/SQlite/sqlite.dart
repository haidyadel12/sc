import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:final_ed/JsonModels/users.dart';

class DatabaseHelper {
  final databaseName = "info.db";

  String users =
      "create table info (usrId INTEGER PRIMARY KEY AUTOINCREMENT, usrName TEXT UNIQUE , usrEmail TEXT UNIQUE, usrPassword TEXT)";


  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    return openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(users);
    });
  }

  Future<bool> login(Users user) async {
    final Database db = await initDB();

    // I forgot the password to check
    var result = await db.rawQuery(
        "select * from info where usrName = '${user.usrName}' AND usrEmail = '${user.usrEmail}' AND usrPassword = '${user.usrPassword}'");
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //Sign up
  Future<int> signup(Users user) async {
    final Database db = await initDB();

    return db.insert('info', user.toMap());
  }
}
