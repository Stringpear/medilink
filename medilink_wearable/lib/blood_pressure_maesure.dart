import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:intl/intl.dart';

Future BloodPressureMaesure() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'medilink-db.cojo9su1ztfx.us-east-2.rds.amazonaws.com',
      port: 3306,
      user: 'master',
      db: 'medilinkDB',
      password: '960620Hb!'));
  var inputFormat = DateFormat('yyyy-MM-dd');
  var now = inputFormat.format(new DateTime.now());

  // Insert some data
  var result = await conn.query(
      'insert into user_wearable_data (name, date, blood_sugar, blood_pressure_systolic,blood_pressure_diastolic) values (?, ?, ?,?,?)',
      ['홍길동',now, 80,120,80]);
  conn.close();
}