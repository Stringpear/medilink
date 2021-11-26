import 'package:flutter/material.dart';
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

        )

    );
  }
}
