import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';

import 'alarm_menu.dart';
class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {

  List categoryList = [['2021년 12월 8일 9:00AM','오늘은 건강 케어 상담이 예약되어 있습니다.'],
    ['2021년 12월 5일 2:00PM','일주일 넘게 웨어러블 업데이트가 진행되지 않았습니다. ']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('알림',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
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
                            AlarmMenu(
                              date:item[0],
                              message: item[1],
                            ),
                        ],

                      )
    );


  }
}
