import 'package:flutter/material.dart';
import 'package:medilink/custom_icons2.dart';
import 'package:medilink/primary.dart';
class Prescription extends StatelessWidget {
  // const Prescription({
  //   required this.date,
  //   required this.doctor,
  //   required this.clinic,
  //   required this.pills,
  // });



  final String date = '2021년 11월 29일';
  final String doctor = '김의사';
  final String clinic = '동네의원';
  final List pills = [['고혈압','토렘','이뇨제',60],['당뇨','DPP-4','혈당강하',60],['당뇨','GLP-1','혈당강하',60]];
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [Center(child:
        Container(width:340,height:250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:color1.withOpacity(0.4),),
        child:Column(
          children:[

            Row(
                children:[
                  Container(width:150,height:40,
                  child: Center(child:Text(' ${date}',style: TextStyle(fontSize: 17),))),

                  Container(width:90,height:20,
                      child: Center(child:Text('주치의 : ${doctor}'))),
                  Container(width:100,height:20,
                      child: Center(child:Text('병원 : ${clinic}'))),
                  ]),
            Row(
                children:[
                  Container(width:80,height:50,
                      child: Center(child:Text('사진',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                  Container(width:50,height:50,
                      child: Center(child:Text('증상',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                  Container(width:70,height:50,
                      child: Center(child:Text('약명',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                  Container(width:50,height:50,
                      child: Center(child:Text('효과',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                  Container(width:80,height:50,
                      child: Center(child:Text('복용기간',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                ]),
            Row(
                children:[
                  Container(width:80,height:50,
                      child: Center(child:Icon(CustomIcons2.pill,size:45))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[0][0]}',style: TextStyle(fontSize: 17),))),
                  Container(width:70,height:50,
                      child: Center(child:Text('${pills[0][1]}'))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[0][2]}'))),
                  Container(width:80,height:50,
                      child: Center(child:Text('${pills[0][3]}일')))
                ]),
            Row(
                children:[
                  Container(width:80,height:50,
                      child: Center(child:Icon(CustomIcons2.pill,size:45))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[1][0]}',style: TextStyle(fontSize: 17),))),
                  Container(width:70,height:50,
                      child: Center(child:Text('${pills[1][1]}'))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[1][2]}'))),
                  Container(width:80,height:50,
                      child: Center(child:Text('${pills[1][3]}일')))
                ]),
            Row(
                children:[
                  Container(width:80,height:50,
                      child: Center(child:Icon(CustomIcons2.pill,size:45))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[2][0]}',style: TextStyle(fontSize: 17),))),
                  Container(width:70,height:50,
                      child: Center(child:Text('${pills[2][1]}'))),
                  Container(width:50,height:50,
                      child: Center(child:Text('${pills[2][2]}'))),
                  Container(width:80,height:50,
                      child: Center(child:Text('${pills[2][3]}일')))
                ])
]        )),

      ),SizedBox(height:20),

        Container(width:340,height:250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:color1.withOpacity(0.2),),
            child:Column(
                children:[

                  Row(
                      children:[
                        Container(width:150,height:40,
                            child: Center(child:Text(' 2021년 9월 20일',style: TextStyle(fontSize: 17),))),

                        Container(width:90,height:20,
                            child: Center(child:Text('주치의 : ${doctor}'))),
                        Container(width:100,height:20,
                            child: Center(child:Text('병원 : ${clinic}'))),
                      ]),
                  Row(
                      children:[
                        Container(width:80,height:50,
                            child: Center(child:Text('사진',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                        Container(width:50,height:50,
                            child: Center(child:Text('증상',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                        Container(width:70,height:50,
                            child: Center(child:Text('약명',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                        Container(width:50,height:50,
                            child: Center(child:Text('효과',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                        Container(width:80,height:50,
                            child: Center(child:Text('복용기간',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                      ]),
                  Row(
                      children:[
                        Container(width:80,height:50,
                            child: Center(child:Icon(CustomIcons2.pill,size:45))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[0][0]}',style: TextStyle(fontSize: 17),))),
                        Container(width:70,height:50,
                            child: Center(child:Text('${pills[0][1]}'))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[0][2]}'))),
                        Container(width:80,height:50,
                            child: Center(child:Text('${pills[0][3]}일')))
                      ]),
                  Row(
                      children:[
                        Container(width:80,height:50,
                            child: Center(child:Icon(CustomIcons2.pill,size:45))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[1][0]}',style: TextStyle(fontSize: 17),))),
                        Container(width:70,height:50,
                            child: Center(child:Text('${pills[1][1]}'))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[1][2]}'))),
                        Container(width:80,height:50,
                            child: Center(child:Text('${pills[1][3]}일')))
                      ]),
                  Row(
                      children:[
                        Container(width:80,height:50,
                            child: Center(child:Icon(CustomIcons2.pill,size:45))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[2][0]}',style: TextStyle(fontSize: 17),))),
                        Container(width:70,height:50,
                            child: Center(child:Text('${pills[2][1]}'))),
                        Container(width:50,height:50,
                            child: Center(child:Text('${pills[2][2]}'))),
                        Container(width:80,height:50,
                            child: Center(child:Text('${pills[2][3]}일')))
                      ])
                ]        ))],
    );

  }
}
