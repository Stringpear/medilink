import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';

import '../custom_icons2.dart';
import 'diagnosis_prescription_page.dart';


class DiagnosisPriscriptionBox extends StatefulWidget {
  const DiagnosisPriscriptionBox({Key? key}) : super(key: key);

  @override
  _DiagnosisPriscriptionBoxState createState() => _DiagnosisPriscriptionBoxState();
}



class _DiagnosisPriscriptionBoxState extends State<DiagnosisPriscriptionBox> {


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
                MaterialPageRoute(builder: (context) => DiagonosisPrescriptionPage())),
            child:Row(
              children: [
                SizedBox(width:15),
                Icon(CustomIcons2.pill,
                    size:50,
                    color:Colors.black),
                SizedBox(width:25),
                Container(
                  height:80,
                  width:220,
                  child:Column(
                    children: [
                      Align( alignment: Alignment.topLeft,
                          child: Text('처방전 조회',
                              style:TextStyle(fontSize: 24,color:Colors.black))),
                      SizedBox(height:5),
                      Align( alignment: Alignment.topLeft,
                          child: Text('담당 주치의의\n처방전을 확인하실 수 있어요.',
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
