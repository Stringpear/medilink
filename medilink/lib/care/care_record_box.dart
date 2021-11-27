import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';


class CareRecordBox extends StatefulWidget {
  const CareRecordBox({Key? key}) : super(key: key);

  @override
  _CareRecordBoxState createState() => _CareRecordBoxState();
}



class _CareRecordBoxState extends State<CareRecordBox> {


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height:100,
        width:160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color:color2, width:5),

        ),
        child:GestureDetector(
          onTap:(){},
          child:
          Container(
            height:80,
            width:220,
            child:Column(
              children: [
                Text('상담 기록 ',
                    style:TextStyle(fontSize: 24,color:Colors.black)),
                SizedBox(height:5),
                Text('상담 기록\n    확인 ',
                  style:TextStyle(color:Colors.black),)
              ],
            ),
          )
          ,
        )

    );


  }
}
