import 'package:flutter/material.dart';




class CustomAppBar extends StatelessWidget {

  const CustomAppBar({Key? key,
    required this.appBar,
    required this.title,
    this.center = false})
      : super(key: key);

  final AppBar appBar;
  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Image.asset("assets/images/MediLink.png", width: 24, height: 24,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: center,
      title: Text("$title", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w700),),
    );
  }


}