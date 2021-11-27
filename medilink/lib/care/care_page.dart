import 'package:flutter/material.dart';
import 'package:medilink/care/care_book_box.dart';
import 'package:medilink/care/care_book_check_box.dart';
import 'package:medilink/care/care_messsage_box.dart';
import 'package:medilink/care/care_prescription_box.dart';
import 'package:medilink/care/care_record_box.dart';
import 'package:medilink/care/care_zoom_box.dart';
import 'package:medilink/primary.dart';

class CarePage extends StatefulWidget {
  const CarePage({Key? key}) : super(key: key);

  @override
  _CarePageState createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text('건강케어',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,

        ),
        body:Center(
            child:SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        height:20
                    ),

                    Container(
                        width:340,
                        child:Align( alignment: Alignment.topLeft,
                            child: Text("케어 코디네이터의\n전문적인 관리를 받아보세요.",
                                style:TextStyle( fontSize: 20,fontFamily:customfonts.fonts_SemiBold )))
                    ),

                    SizedBox(
                        height:20
                    ),
                    CareBookBox(),
                    SizedBox(
                        height:20
                    ),
                    CareZoomBox(),
                    SizedBox(
                        height:20
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CareRecordBox(),
                        SizedBox(width:10),
                        CareBookCheckBox()
                      ],
                    ),

                    SizedBox(
                        height:10
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DiagnosisPriscriptionBox(),
                        SizedBox(width:10),
                        CareMessageBox()
                      ],
                    ),
                    SizedBox(
                        height:20
                    ),

                  ],
                )
            )
        )

    );
  }
}
