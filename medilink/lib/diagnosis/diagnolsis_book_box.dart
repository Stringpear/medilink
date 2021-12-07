import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_book_page.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';


class DiagnosisBookBox extends StatefulWidget {
  const DiagnosisBookBox({Key? key}) : super(key: key);

  @override
  _DiagnosisBookBoxState createState() => _DiagnosisBookBoxState();
}



class _DiagnosisBookBoxState extends State<DiagnosisBookBox> {


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
          border:Border.all(color:color1, width:5),
          color:color1
      ),
      child:GestureDetector(
          onTap:()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiagnosisBookPage())),
        child:Row(
        children: [
          Icon(CustomIcons.doctor,
              size:60,
              color:Colors.white),
        SizedBox(width:30),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('정기 진료 일정관리',
                  style:TextStyle(fontSize: 24,color:Colors.white))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('정기진료 일정을 확인하고 \n예약, 변경할 수 있어요.',
                  style:TextStyle(color:Colors.white),))
            ],
          ),
        ),
        ],
      )

      )
        
    );
  }
}
