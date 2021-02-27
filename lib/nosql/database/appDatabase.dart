import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_app_aula2_banco/nosql/dao/bookDao.dart';
import 'package:flutter_app_aula2_banco/nosql/model/book.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'appDatabase.g.dart';

@Database(version: 1, entities: [Book])
abstract class AppDatabase extends FloorDatabase {
  BookDao get bookDao;
}
