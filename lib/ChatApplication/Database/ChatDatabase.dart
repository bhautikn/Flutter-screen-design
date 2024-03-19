import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ChatDatabase{
  Future<Database> initDatabase() async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'chat_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE chat('
              'id INTEGER PRIMARY KEY AUTO INCREMENT, '
              'name TEXT, '
              'unread INTEGER, '
              'created DATE, '
              'status TEXT, '
              'urlToken TEXT, '
              'last_massage TEX, T'
              'history TEXT'
              ');'
              'CREATE TABLE data('
              'id INTEGER PRIMARY KEY AUTO INCREMENT, '
              'from_or_to TEXT, '
              'data TEXT, '
              'status TEXT, '
              'reply INTEGER',
        );
      },
      version: 1,
    );
    return database;
  }
  Future<List> getChats() async{
    final db = await initDatabase();
    final List<Map<String, dynamic>> result = await db.rawQuery('SELECT * FROM chat');
    return result;
  }

}