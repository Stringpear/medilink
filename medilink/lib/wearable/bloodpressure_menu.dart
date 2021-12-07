

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medilink/wearable/wearable_bloodsugar_page.dart';

import '../primary.dart';


class BloodPressureMenu extends StatelessWidget {
  const BloodPressureMenu({
    required this.date,
    required this.systolic,
    required this. diastolic
  });

  final String date;
  final int systolic;
  final int diastolic;

  Color getColor() {
    if (this.systolic>120&&this.systolic<=140) {
      return Colors.yellow;
    }
    if (this.systolic>140&&this.systolic<=160) {
      return Colors.orange;
    }
    if (this.systolic>160) {
      return Colors.red;
    }

    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: color3.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        child:Center(
          child: Row(
            children: [
              SizedBox(width:20),
              Container(
                  child:Center(
                      child:Text('${this.date}')),
                  height: 50,width:57),
            SizedBox(width:15),
            Container(width:110,
                child:
            Text('${this.systolic}/${this.diastolic}',style: TextStyle(fontSize: 30))),
              Container(
                width: 80,
                  child: Text('mm/Hg',style: TextStyle(fontSize: 20))),
            SizedBox(width:5),
              Container(
                width:30,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color:getColor()

                  //this.diastolic>140 ? Colors.red: Colors.green
                      )
                ),

            ],
          ),


    ),

    );

  }

}
