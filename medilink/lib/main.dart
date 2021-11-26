import 'package:flutter/material.dart';
import 'package:medilink/splash_page.dart';
import 'package:medilink/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/care_page.dart';
import 'package:medilink/alarm_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'splash',
      routes:{
        'splash':(context)=>SplashPage(),
        'main':(context)=>MainPage(),
        'diagnosis':(context)=>DiagnosisPage(),
        'care':(context)=>CarePage(),
        'alarm':(context)=>AlarmPage(),

      }

    );
  }

}



