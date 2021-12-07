import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';
class WearableBloodPressurePage extends StatelessWidget {

  List bloodPressureList = [['2021년 12월 7일',140,80],
    ['2021년 12월 6일',118,78],
    ['2021년 12월 5일',122,90],
    ['2021년 12월 4일',142,92],
    ['2021년 12월 3일',161,102],
    ['2021년 12월 2일',139,90],
    ['2021년 12월 1일',121,80],
    ['2021년 11월 30일',147,80],
    ['2021년 11월 29일',123,80],
    ['2021년 11월 28일',152,80],
    ['2021년 11월 27일',131,80],
    ['2021년 11월 26일',111,80],
    ['2021년 11월 25일',132,80],
    ['2021년 11월 24일',117,80],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title:Text('혈압 수치 확인',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
    iconTheme: IconThemeData(color:Colors.black),
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
        ),
            body:SingleChildScrollView(
              scrollDirection: Axis.vertical,

      child:Column(

              children:[
                Container(
              padding:EdgeInsets.all(15),
              child: BloodPressureChart2()
                ),
        SizedBox(height:600,width:360,
        child:
        GridView.count(
                primary: false,
                padding : const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                childAspectRatio: 5/1,
                children: <Widget>[
                  for(var item in bloodPressureList)
                   BloodPressureMenu(
                      date:item[0],
                     systolic: item[1],
                     diastolic:item[2]

                    ),
                ],

              ))


              ]
              )
    
            )
    );

  }
}
