import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/custom_icons.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  TabController? controller;
  String? id;

  @override
  void initState(){
    super.initState();
  }
  @override
    void dispose(){
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TabBar(
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
      indicatorColor:color1,
      controller:controller,
      indicatorWeight: 5,
      labelStyle: TextStyle(fontSize: 14),
      labelPadding: EdgeInsets.all(0),

    );
  }
}


