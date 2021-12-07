import 'package:flutter/material.dart';
import 'package:medilink/care/care_book_box.dart';
import 'package:medilink/components.dart';
import 'package:medilink/database.dart';
import 'package:medilink/diagnosis/diagnolsis_book_box.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/home/home_swiper.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/Wearable_update_box.dart';
import 'package:medilink/splash_page.dart';
import 'package:medilink/wearable/wearable_page.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:async';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage> {
  var name = '홍길동';
  @override
  void initState(){

    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('images/MediLink2.png',
                      fit: BoxFit.contain),
                )
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Center(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 20
                      ),

                      Container(
                          width: 340,
                          child: Align(alignment: Alignment.topLeft,
                              child: Text("${name}님,\n무엇이 필요하신가요?",
                                  style: TextStyle(fontSize: 20,
                                      fontFamily: customfonts.fonts_SemiBold)))
                      ),

                      SizedBox(
                          height: 20
                      ),
                      DiagnosisBookBox(),
                      SizedBox(
                          height: 20
                      ),
                      CareBookBox(),
                      SizedBox(
                          height: 20
                      ),
                      WearableUpdateBox(),
                      SizedBox(
                          height: 20
                      ),
                      Container(
                          width: 340,
                          child: Align(alignment: Alignment.topLeft,
                              child: Text("생활 건강 정보",
                                  style: TextStyle(fontSize: 20,
                                      fontFamily: customfonts.fonts_SemiBold)))
                      ),
                      SizedBox(
                          height: 10
                      ),
                      Container(
                          child: HomeSwiper(),
                          height: 200,
                          width: 340
                      ),
                    ],
                  )
              )
          )

      );
    }
  }
