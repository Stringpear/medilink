import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/custom_icons2.dart';
import 'dart:async';

class WearableUpdateBox extends StatefulWidget {
  const WearableUpdateBox({Key? key}) : super(key: key);

  @override
  _WearableUpdateBoxState createState() => _WearableUpdateBoxState();
}



class _WearableUpdateBoxState extends State<WearableUpdateBox> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(10),
      height:100,
      width:340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(color:color3, width:5),
          color:color3
      ),
      child:GestureDetector(
        onTap:(){sleep(const Duration(seconds: 1));
        _showDialog(context);},
        child:Row(
        children: [
          Icon(CustomIcons2.heart_rate,
              size:60,
              color:Colors.white),
        SizedBox(width:30),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('웨어러블 업데이트',
                  style:TextStyle(fontSize: 24,color:Colors.white))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('홍길동님의 마지막 업데이트는 \n2021.12.08일 입니다.',
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

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("홍길동님",style: TextStyle(fontSize: 20),),
        content: new Text("혈압, 혈당 정보의 업데이트가\n완료되었습니다.",style: TextStyle(fontSize: 15)),
        actions: <Widget>[
          new Container(
            height: 20,
            child:
            GestureDetector(
              child:Text("Close",style: TextStyle(fontSize: 15)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      );
    },
  );
}