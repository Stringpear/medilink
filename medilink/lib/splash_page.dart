import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:medilink/DBdata.dart';
import 'package:medilink/database.dart';
import 'package:medilink/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    super.initState();
    // DBdata db = new DBdata();
    // Future<void> getname() async {
    //   var tmp = await DBController().getData();
    //   for (var row in tmp){
    //     db.name = row[0].toString();
    //   }

    getname();
    Timer(const Duration(milliseconds: 3000),
            ()=>Navigator.of(context).pushReplacementNamed('main'));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child:Column(
                children: <Widget>[
                  const SizedBox(
                    height:230,
                  ),
                  SizedBox(
                      height:300,
                      width:300,
                      child:Image.asset('images/MediLink.png')
                  ),

                ]
            )

        )
    );
  }
}
