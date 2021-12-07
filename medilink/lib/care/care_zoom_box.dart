import 'package:flutter/material.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/main_page.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/custom_icons2.dart';
import 'package:url_launcher/url_launcher.dart';


final List<String> ZoomURL = [
  'https://us02web.zoom.us/j/84167928769?pwd=QitmOUltTWZEQkNFeDlpdHJtY3hPQT09',
];

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
        onTap:()=>launch(ZoomURL[0],forceWebView: false),
        child:Row(
        children: [SizedBox(width:10),
          Icon(CustomIcons2.video_call,
              size:30,
              color:Colors.black),
        SizedBox(width:50),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('케어 상담 참가하기',
                  style:TextStyle(fontSize: 24,color:Colors.black))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('홍길동님,2021.12.8(수) 오후 2시\n케어상담이 예약되어 있어요.',
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
