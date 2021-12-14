// @dart=2.9

import 'package:flutter/material.dart';
import 'package:medilink_wearable/splash_page.dart';
import 'package:flutter/services.dart';
import 'package:medilink_wearable/main_page.dart';


void main(){
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
          'main':(context)=>MainPage()

        }

    );
  }

}



