import 'package:flutter/material.dart';
import 'package:medilink/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title: Center(
          child: SizedBox(
              height:200,
              width:200,
              child: Image.asset('images/MediLink2.png',
                      fit: BoxFit.contain),
          )
          ),


        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
        body:Text('summary')

    );
  }
}
