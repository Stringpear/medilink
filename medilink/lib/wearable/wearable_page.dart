import 'package:flutter/material.dart';
import 'package:medilink/components.dart';
import 'package:medilink/primary.dart';

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

        )

    );

  }
}
