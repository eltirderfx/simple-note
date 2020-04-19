import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'Models/MyNote.dart';

import 'dart:io' as io;
import 'dart:async';

class DBHelper
{
  DBHelper._();
  static final DBHelper _instance = new DBHelper._();

  factory DBHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if( _db != null ) return _db;

    _db = await setDB();
    return _db;
  }

  setDB() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "SimpleNoteDB");
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate (Database db, int version) async {
    await db.execute("CREATE TABLE mynote(id INTEGER PRIMARY KEY, title TEXT, note TEXT, createDate TEXT, updateDate TEXT, sortDate TEXT)");
    print("DB Created");
  }

  Future<int> saveNote(MyNote mynote) async {
    var dbClient = _db;

    int res = await dbClient.insert("mynote", mynote.toMap());
    return res;
  }

}