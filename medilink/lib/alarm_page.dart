import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          title:Text('알림',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,

        )

    );
  }
}