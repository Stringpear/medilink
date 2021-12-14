import 'package:flutter/material.dart';
import 'package:medilink_wearable/blood_pressure_maesure.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Column(
        children: [
          SizedBox(height:25),
          Center(
          child: Container(
            child: Image.asset('images/MediLink2.png'),
            width:150
          )
          ),
          Container(
            height:40,
            width:150,
            child: Center(
                child:Text('혈압&혈당',style: TextStyle(fontSize: 22),textAlign: TextAlign.center,)
            ),
          ),
          Container(
            height:60,
            width:150,
            child: Center(
              child:Text('건강 정보를 측정하려면\n측정 버튼을 누르세요.',textAlign: TextAlign.center,)
            ),
          ),

          Container(

            width:80,
            height:30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF1FA3C6),
            ),
            child:
              GestureDetector(
                child:Center(
                    child:Text('측정',style: TextStyle(fontSize: 18,color: Colors.white),)),
                onTap:(){
                  BloodPressureMaesure();
                  _showDialog(context);
    }
          )

    )
        ],


      )

    );

  }
}
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("홍길동님",style: TextStyle(fontSize: 15),),
        content: new Text("측정이 완료되었습니다.",style: TextStyle(fontSize: 12)),
        actions: <Widget>[
          new Container(
            height: 11,
            child:
            GestureDetector(
          child:Text("Close",style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          )
        ],
      );
    },
  );
}