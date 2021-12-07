import 'package:flutter/material.dart';
import 'package:medilink/care/care_record_page.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/custom_icons2.dart';


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
        width:340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color:color2, width:5),

        ),
        child:GestureDetector(
            onTap:()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CareRecordPage())),
            child:Row(
              children: [
                SizedBox(width:15),
                Icon(CustomIcons2.record,
                    size:50,
                    color:Colors.black),
                SizedBox(width:25),
                Container(
                  height:80,
                  width:220,
                  child:Column(
                    children: [
                      Align( alignment: Alignment.topLeft,
                          child: Text('케어 상담 기록',
                              style:TextStyle(fontSize: 24,color:Colors.black))),
                      SizedBox(height:5),
                      Align( alignment: Alignment.topLeft,
                          child: Text('홍길동님의 최근 케어 상담은\n2021.12.01일 입니다.',
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
