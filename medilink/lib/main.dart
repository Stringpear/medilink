import 'package:flutter/material.dart';
import 'package:medilink/splash_page.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/care/care_page.dart';
import 'package:medilink/alarm_page.dart';
import 'package:medilink/home/home_page.dart';
import 'package:medilink/primary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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



