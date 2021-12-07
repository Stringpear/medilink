import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_message_page.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';

import '../custom_icons2.dart';


class DiagnosisMessageBox extends StatefulWidget {
  const DiagnosisMessageBox({Key? key}) : super(key: key);

  @override
  _DiagnosisMessageBoxState createState() => _DiagnosisMessageBoxState();
}



class _DiagnosisMessageBoxState extends State<DiagnosisMessageBox> {


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height:100,
        width:340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color:color1, width:5),

        ),
        child:GestureDetector(
            onTap:()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiagnosisMessagePage())),
            child:Row(
              children: [
                SizedBox(width:15),
                Icon(CustomIcons2.message,
                    size:40,
                    color:Colors.black),
                SizedBox(width:35),
                Container(
                  height:80,
                  width:220,
                  child:Column(
                    children: [
                      Align( alignment: Alignment.topLeft,
                          child: Text('주치의 메시지',
                              style:TextStyle(fontSize: 24,color:Colors.black))),
                      SizedBox(height:5),
                      Align( alignment: Alignment.topLeft,
                          child: Text('주치의가 보낸 \n메시지를 확인할 수 있어요.',
                            style:TextStyle(color:Colors.black),))
                    ],
                  ),
                ),
              ],
            )

        )

    );
  }
}
