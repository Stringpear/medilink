import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';


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
        width:160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color:color1, width:5),

        ),
        child:GestureDetector(
          onTap:(){},
          child:
          Container(
            height:80,
            width:220,
            child:Column(
              children: [
                Text('처방전 조회' ,
                    style:TextStyle(fontSize: 24,color:Colors.black)),
                SizedBox(height:5),
                Text('  원격진료\n처방전 확인',
                  style:TextStyle(color:Colors.black),)
              ],
            ),
          )
          ,
        )

    );


  }
}
