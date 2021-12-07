

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medilink/wearable/wearable_bloodsugar_page.dart';
import 'primary.dart';

class DmMenu extends StatelessWidget {
  const DmMenu({
    required this.date,
    required this.message
  });


  final String date;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color1.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20)),



      child:Center(
        child: Row(
          children: [
            SizedBox(width:20),
            Container(
                child:Center(
                    child:Text('${this.date}')),
                height: 50,width:57),
            SizedBox(width:25),
            Container(width:200,
                child:
                Text('${this.message}',style: TextStyle(fontSize: 15))),

            SizedBox(width:50),


          ],
        ),


      ),

    );

  }
}
