import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart'; //sqflite package
import 'package:path/path.dart'; //used to join paths
import 'package:path_provider/path_provider.dart'; //path_provider package
import './userdata.dart'; //import model class
import 'dart:io' as io;
import 'dart:async';

class Db_Helper
{
  late Database _db;
   late String Rowid = 'Rowid';
   late String Email = 'Email';
   late String Pass = 'Pass';
   late String TABLE = 'registration';
   late String DB_NAME = 'reading_monitor.db';
  
  Future<Database> get db async
  {
    if(_db != null)
      {
        return _db;
      }
    _db = await initDb();
    return _db;
  }
  initDb() async
  {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path , DB_NAME);
    var db = await openDatabase(path , version: 1 , onCreate: _onCreate);
    return db;    
  }
  _onCreate(Database db , int version) async
  {
    await db.execute("CREATE TABLE IF NOT EXISTS "
        "$TABLE "
        "($Rowid INT(6) INTEGER PRIMARY KEY, $Email TEXT ,$Pass Text)");
  }
  Future<User> save(User user) async
  {
    var dbClient = await db;
    user.Rowid = await dbClient.insert(TABLE, user.toMap());
    return user;
  }
   Future<List<User>> getUser() async
  {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [Rowid,Email,Pass]);
    List<User> user = [];
    if(maps.isNotEmpty )
      {
        for(int i = 0 ; i<maps.length ; i++)
          {
            //user.add(User.fromMap(maps[i]));
          }
      }
    return user;
  }
  Future<int> delete (int Rowid) async
  {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where : '$Rowid = ?', whereArgs: [Rowid]);
  }
  Future<int> update (User user) async
  {
    var dbClient = await db;
    return await dbClient.update(TABLE, user.toMap(),
        where:'$Rowid = ?', whereArgs: [user.Rowid]);
  }
  Future close() async
  {
    var dbClient = await db;
    dbClient.close();
  }
}