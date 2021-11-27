import 'package:flutter/material.dart';
import 'package:medilink/components.dart';
import 'package:medilink/home/home_swiper.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/Wearable_update_box.dart';
import 'package:medilink/wearable/wearable_bloodpressure_box.dart';
import 'package:medilink/wearable/wearable_bloodsugar_box.dart';

class WearablePage extends StatefulWidget {
  const WearablePage({Key? key}) : super(key: key);

  @override
  _WearablePageState createState() => _WearablePageState();
}

class _WearablePageState extends State<WearablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text('웨어러블',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
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
                            child: Text("본인의 건강 지표를\n꾸준히 체크해보세요.",
                                style:TextStyle( fontSize: 20,fontFamily:customfonts.fonts_SemiBold )))
                    ),

                    SizedBox(
                        height:20
                    ),
                    WearableUpdateBox(),
                    SizedBox(
                        height:20
                    ),
                    WearableBloodPressureBox(),
                    SizedBox(
                        height:20
                    ),
                    WearableBloodSugarBox(),
                    SizedBox(
                        height:20
                    ),
                    Container(
                        width:340,
                        child:Align( alignment: Alignment.topLeft,
                            child: Text("웨어러블 디바이스 ",
                                style:TextStyle( fontSize: 20,fontFamily: customfonts.fonts_SemiBold)))
                    ),
                    SizedBox(
                        height:10
                    ),
                    Container(
                        child: HomeSwiper(),
                        height:200,
                        width:340
                    ),


                  ],
                )
            )
        )

    );
  }
}
