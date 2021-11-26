import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 2500),
            ()=>Navigator.of(context).pushReplacementNamed('main'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
            child:Column(
                children: [
                  SizedBox(
                    height:280,
                  ),
                  Container(
                      height:200,
                      width:200,
                      child:Image.asset('images/MediLink.png')
                  ),

                ]
            )

        )
    );
  }
}
