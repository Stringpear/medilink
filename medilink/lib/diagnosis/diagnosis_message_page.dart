import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/cm_menu.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';

import '../alarm_menu.dart';
import '../dm_menu.dart';

class DiagnosisMessagePage extends StatelessWidget {


  List categoryList = [['2021년 12월 5일 9:00AM','정기 진료 외, 추가적인 진료가 필요합니다. 병원에 방문 바랍니다.'],
    ['2021년 11월 28일 2:00PM','추가 처방을 위해 병원에 방문하시기 바랍니다.']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('주치의 메시지',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          iconTheme: IconThemeData(color:Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding : const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          childAspectRatio: 5/1,
          children: <Widget>[
            for(var item in categoryList)
              DmMenu(
                date:item[0],
                message: item[1],
              ),
          ],

        )
    );


  }
}
