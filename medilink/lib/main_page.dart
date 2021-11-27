
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medilink/alarm_page.dart';
import 'package:medilink/care/care_page.dart';
import 'package:medilink/custom_icons.dart';
import 'package:medilink/custom_tabbar.dart';
import 'package:medilink/diagnosis/diagnosis_page.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/home/home_page.dart';
import 'package:medilink/wearable/wearable_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}


//class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  TabController? controller;
  String? id;





  @override
  void initState(){
  super.initState();
  controller = TabController(length: 5, vsync: this);


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
  children:const <Widget>[
  HomePage(),
  DiagnosisPage(),
  CarePage(),
  WearablePage(),
  AlarmPage(),

  ],
  controller: controller,

  ),

  bottomNavigationBar: TabBar(
  tabs: <Widget>[

  Tab(
  icon:Icon(Icons.home,size:30),text:'홈',iconMargin: EdgeInsets.only(bottom: 5),
  ),
  Tab(
  icon:Icon(CustomIcons.doctor,size:30),text:'원격진료',iconMargin: EdgeInsets.only(bottom: 5),
  ),
  Tab(
  icon:Icon(CustomIcons.care,size:30),text:'건강케어',iconMargin: EdgeInsets.only(bottom: 5),
  ),
  Tab(
  icon:Icon(CustomIcons.bloodpressure,size:30),text:'웨어러블',iconMargin: EdgeInsets.only(bottom: 5)
  ),
  Tab(
  icon:Icon(Icons.notifications_none,size:30),text:'알림',iconMargin: EdgeInsets.only(bottom: 5)
  ),

  ],

  labelColor:color1,
  unselectedLabelColor: Colors.black38,
  indicatorColor: color1,
  controller:controller,
  indicatorWeight: 5,
  labelStyle: TextStyle(fontSize: 14),
  labelPadding: EdgeInsets.all(0),

  )

  );


  }



}
