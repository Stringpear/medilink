import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';


class CareZoomBox extends StatefulWidget {
  const CareZoomBox({Key? key}) : super(key: key);

  @override
  _CareZoomBoxState createState() => _CareZoomBoxState();
}



class _CareZoomBoxState extends State<CareZoomBox> {


  @override
  void initState() {
    super.initState();
  }


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
        onTap:(){},
        child:Row(
        children: [
          Icon(CustomIcons.doctor,
              size:60,
              color:Colors.black),
        SizedBox(width:30),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('케어상담 참가하기',
                  style:TextStyle(fontSize: 24,color:Colors.black))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('변현배님,2021.12.10 금요일, \n상담이 예약되어 있습니다.',
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
