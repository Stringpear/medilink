import 'package:flutter/material.dart';
import 'package:medilink/care/care_book_page.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/primary.dart';


class CareBookBox extends StatefulWidget {
  const CareBookBox({Key? key}) : super(key: key);


  @override
  _CareBookBoxState createState() => _CareBookBoxState();
}



class _CareBookBoxState extends State<CareBookBox> {


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
          color:color2
      ),
      child:GestureDetector(
          onTap:()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CareBookPage())),
        child:Row(
        children: [
          Icon(CustomIcons.care,
              size:60,
              color:Colors.white),
        SizedBox(width:30),
        Container(
          height:80,
          width:220,
          child:Column(
            children: [
              Align( alignment: Alignment.topLeft,
                  child: Text('케어 상담 일정관리',
                  style:TextStyle(fontSize: 24,color:Colors.white))),
              SizedBox(height:5),
              Align( alignment: Alignment.topLeft,
                  child: Text('케어상담 일정을 확인하고 \n예약, 변경할 수 있어요.',
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
