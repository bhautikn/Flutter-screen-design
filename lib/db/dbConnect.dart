import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'user_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT, age INTEGER, detail TEXT)',
        );
      },
      version: 1,
    );
    return database;
  }

  Future getAll() async {
    final db = await initDatabase();
    final data = await db.rawQuery('select * from user');

    return data;
  }

  Future insertOne(list) async {
    final db = await initDatabase();
    final res = await db.rawInsert('INSERT INTO user(name, age, detail) VALUES(?, ?, ?)', list);
    return res;
  }

  Future deleteUser(id) async {
    print('$id ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::');
    final db = await initDatabase();
    final res = await db.rawDelete('DELETE FROM user WHERE id = ?', [id]);
    return res;
  }
  Future updateOne(data) async {
    final db = await initDatabase();
    final res = await db.rawUpdate('UPDATE user SET name = ?, age = ?, detail = ? WHERE id = ?', data);
    return res;
  }
  Future search(data) async {
    final db = await initDatabase();
    final res = await db.rawQuery('select * from user where name like "%$data%"');
    return res;
  }
}
