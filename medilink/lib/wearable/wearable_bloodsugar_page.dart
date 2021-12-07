import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodsugar_menu.dart';
class WearableBloodSugarPage extends StatelessWidget {

  List categoryList = [['2021년 12월 7일',140],
    ['2021년 12월 6일',135],
    ['2021년 12월 5일',127],
    ['2021년 12월 4일',142],
    ['2021년 12월 3일',155],
    ['2021년 12월 2일',161],
    ['2021년 12월 1일',121],
    ['2021년 11월 30일',147],
    ['2021년 11월 29일',123],
    ['2021년 11월 28일',152],
    ['2021년 11월 27일',131],
    ['2021년 11월 26일',111],
    ['2021년 11월 25일',132],
    ['2021년 11월 24일',117],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title:Text('혈당 수치 확인',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
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
              child: BloodSugarChart()
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
                  for(var item in categoryList)
                   BloodSugarMenu(
                      date:item[0],
                     bloodsugar: item[1],
                    ),
                ],

              ))


              ]
              )
    
            )
    );

  }
}
