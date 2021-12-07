import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medilink/care/care_book.dart';
import 'package:medilink/care/care_calendar.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';
import 'package:table_calendar/table_calendar.dart';

import 'care_calendar.dart';

class CareBookPage extends StatefulWidget {
  const CareBookPage({Key? key}) : super(key: key);

  @override
  _CareBookPageState createState() => _CareBookPageState();
}

class _CareBookPageState extends State<CareBookPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('케어 상담 일정 관리',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          iconTheme: IconThemeData(color:Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body:CareCalendar(),
      resizeToAvoidBottomInset : false,

    );

  }
}