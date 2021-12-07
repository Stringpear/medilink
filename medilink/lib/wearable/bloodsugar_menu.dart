

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medilink/wearable/wearable_bloodsugar_page.dart';

import '../primary.dart';


class BloodSugarMenu extends StatelessWidget {
  const BloodSugarMenu({
    required this.date,
    required this.bloodsugar
  });

  Color getColor() {
    if (this.bloodsugar>140&&this.bloodsugar<=150) {
      return Colors.yellow;
    }
    if (this.bloodsugar>150&&this.bloodsugar<=160) {
      return Colors.orange;
    }
    if (this.bloodsugar>160) {
      return Colors.red;
    }

    return Colors.green;
  }

  final String date;
  final int bloodsugar;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color3.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20))
        ,
        child:Center(
          child: Row(
            children: [
              SizedBox(width:40),
              Container(
                  child:Center(
                      child:Text('${this.date}')),
                  height: 50,width:57),
            SizedBox(width:25),
            Container(width:50,
                child:
            Text('${this.bloodsugar}',style: TextStyle(fontSize: 30))),
              Container(
                width: 60,
                  child: Text('mg/dL',style: TextStyle(fontSize: 20))),
            SizedBox(width:50),
              Container(
                width:30,
                height:30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: getColor()
                      )
                ),

            ],
          ),


    ),

    );

  }
}
