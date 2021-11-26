import 'package:flutter/material.dart';
import 'package:medilink/alarm_page.dart';
import 'package:medilink/care_page.dart';
import 'package:medilink/diagnosis_page.dart';
import 'package:medilink/summary_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  TabController? controller;
  String? id;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }
  @override
    void dispose(){
    controller!.dispose();
    super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TabBarView(
        children:<Widget>[
          SummaryPage(),
          DiagnosisPage(),
          CarePage(),
          AlarmPage(),

        ],
        controller: controller,

      ),
       bottomNavigationBar: TabBar(
         tabs:<Tab>[
           Tab(
             icon:Icon(Icons.map),
           ),
           Tab(
             icon:Icon(Icons.star),
           ),
           Tab(
             icon:Icon(Icons.search),
           ),
           Tab(
             icon:Image.asset('images/bell.png',color:Colors.blue,width:30,height:30),
               text:'알림',
            ),

         ],
         labelColor:Colors.black,
         indicatorColor:Colors.blue,
         controller:controller,
       ),
    );

  }
}
