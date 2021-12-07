import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:intl/intl.dart';

class DBController {
  var name;
  Future<List> getData() async {
    final conn = await MySqlConnection.connect(
        ConnectionSettings(
            host: 'medilink-db.cojo9su1ztfx.us-east-2.rds.amazonaws.com',
            port: 3306,
            user: 'master',
            db: 'medilinkDB',
            password: '960620Hb!'));

    var inputFormat = DateFormat('yyyy-MM-dd');
    var now = inputFormat.format(new DateTime.now());
    var results = await conn.query(
        'select name from users where id = 1');
    conn.close();
    return results.toList();
  }
}
Future<void> getname() async {
  var name = await DBController().getData();

  print('${name[0][0]}');
}