import 'package:flutter/material.dart';
import 'package:medilink/custom_icons2.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/wearable_bloodsugar_page.dart';


class WearableBloodSugarBox extends StatefulWidget {
  const WearableBloodSugarBox({Key? key}) : super(key: key);

  @override
  _WearableBloodSugarBoxState createState() => _WearableBloodSugarBoxState();
}



class _WearableBloodSugarBoxState extends State<WearableBloodSugarBox> {


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
          border:Border.all(color:color3, width:5),

      ),
      child:GestureDetector(
        onTap:()=>Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WearableBloodSugarPage())),
        child:Row(
        children: [Container(width:70,
            child:Center(
              child:Icon(CustomIcons2.blood_sugar,
                  size:70,
                  color:Colors.black),
            )),
        SizedBox(width:20),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('혈당 수치 확인',
                  style:TextStyle(fontSize: 24,color:Colors.black))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('가장 최근 : 140mg/dl \n일주일 평균 : 137mg/dl',
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
