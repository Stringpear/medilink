import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/diagnosis/prescription.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';

class DiagonosisPrescriptionPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('처방전 조회',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
        iconTheme: IconThemeData(color:Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body:Prescription()
    );

  }
}
