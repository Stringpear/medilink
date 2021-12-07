import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/diagnosis/diagnosis_calendar.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DiagnosisBookPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('정기 진료 일정 관리',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          iconTheme: IconThemeData(color:Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
      body: DiagnosisCalendar(),
        resizeToAvoidBottomInset : false,



        );

  }
}
