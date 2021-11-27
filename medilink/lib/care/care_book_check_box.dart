import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';


class CareBookCheckBox extends StatefulWidget {
  const CareBookCheckBox({Key? key}) : super(key: key);

  @override
  _CareBookCheckBoxState createState() => _CareBookCheckBoxState();
}



class _CareBookCheckBoxState extends State<CareBookCheckBox> {


  @override
  void initState() {
    super.initState();
  }


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
              Text('예약 현황 ',
                  style:TextStyle(fontSize: 24,color:Colors.black)),
              SizedBox(height:5),
              Text('케어상담 예약 일정 \n       확인 및 수정',
                  style:TextStyle(color:Colors.black),)
            ],
          ),
        )
        ,
      )

      );
        

  }
}
