// @dart=2.9

import 'package:flutter/material.dart';
import 'package:medilink/splash_page.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/care/care_page.dart';
import 'package:medilink/alarm_page.dart';
import 'package:medilink/home/home_page.dart';
import 'package:flutter/services.dart';

import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'medilink-db.cojo9su1ztfx.us-east-2.rds.amazonaws.com',
      port: 3306,
      user: 'master',
      db: 'medilinkDB',
      password: '960620Hb!'));

  // Create a table
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:Colors.white // 원하는 색
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);
  //const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Pretendard-Regular',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,

        ),
      debugShowCheckedModeBanner: false,
      initialRoute:'splash',
      routes:{
        'splash':(context)=>SplashPage(),
        'main':(context)=>MainPage(),
        'diagnosis':(context)=>DiagnosisPage(),
        'care':(context)=>CarePage(),
        'alarm':(context)=>AlarmPage(),
        'home':(context)=>HomePage()

      }

    );
  }

}



