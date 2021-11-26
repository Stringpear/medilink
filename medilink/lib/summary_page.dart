import 'package:flutter/material.dart';
import 'package:medilink/components.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: SizedBox(
            height:150,
            width:150,
            child:IconButton(
                icon: Image.asset('images/MediLink2.png',
                    fit: BoxFit.contain),
                onPressed: () {  }
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
