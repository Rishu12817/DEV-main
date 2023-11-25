import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandler {

  static final DatabaseHandler _databaseHandler = DatabaseHandler.internal(); 
  static Database? _database;

  factory DatabaseHandler() => _databaseHandler;
  DatabaseHandler.internal();

  Future<Database?> get openDB async {
    _database = await openDatabase(join(await getDatabasesPath(), "demo.db"));

    return _database; 
  }

  
}
