import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';

import '../alarm_menu.dart';
import '../cm_menu.dart';

class CareMessagePage extends StatelessWidget {


  List categoryList = [['2021년 12월 8일 9:00AM','최근 혈당 수치가 높습니다. 관리와 주의가 필요합니다.'],
    ['2021년 12월 1일 2:00PM','예약된 케어 상담에 불참하셨습니다. 추가적인 케어 상담 예약 바랍니다.']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('케어 코디네이터 메시지',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
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
              CmMenu(
                date:item[0],
                message: item[1],
              ),
          ],

        )
    );


  }
}
