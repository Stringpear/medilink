import 'package:flutter/material.dart';
import 'package:medilink/components.dart';
import 'package:medilink/diagnosis/diagnolsis_messsage_box.dart';
import 'package:medilink/diagnosis/diagnolsis_prescription_box.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/diagnosis/diagnolsis_book_box.dart';
import 'package:medilink/diagnosis/diagnolsis_record_box.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({Key? key}) : super(key: key);

  @override
  _DiagnosisPageState createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text('원격진료',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
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
                            child: Text("주치의를 통해\n정기적인 진료를 받아보세요.",
                                style:TextStyle( fontSize: 20,fontFamily:customfonts.fonts_SemiBold )))
                    ),

                    SizedBox(
                        height:20
                    ),
                    DiagnosisBookBox(),
                    SizedBox(
                        height:20
                    ),
                    DiagnosisPriscriptionBox(),

                        SizedBox(height:20),
                    DiagnosisRecordBox(),
                        SizedBox(height:20),
                        DiagnosisMessageBox(),
                    SizedBox(height: 133,)



                  ],
                )
            )
        )

    );
  }
}
