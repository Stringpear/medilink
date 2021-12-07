import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';

class CareRecordPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text('케어 상담 기록',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
          iconTheme: IconThemeData(color:Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(child:Center(child:
          DataTable(

              decoration: BoxDecoration(color:color2.withOpacity(0.1),borderRadius: BorderRadius.circular(20)),
              headingTextStyle: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),

              columns: [ DataColumn(label: Text('상담 날짜')),
                DataColumn(label: Text('코디'),),
                DataColumn(label: Text('상담 내용',)),
              ],columnSpacing: 30,
              rows: [ DataRow( cells:
              [ DataCell(Text('2021/11/29')),
                DataCell(Text('김코디')),
                DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
              ],),
                DataRow( cells:
                [ DataCell(Text('2021/11/22')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/11/15')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/11/8')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/11/1')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/10/22')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/10/16')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/10/10')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/10/3')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/9/22')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/9/12')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/9/7')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/9/1')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/8/26')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/8/17')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/8/10')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/8/3')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
                DataRow( cells:
                [ DataCell(Text('2021/7/29')),
                  DataCell(Text('김코디')),
                  DataCell(Text('고혈압 및 당뇨 정기 케어 상담')),
                ],),
              ],
          )
        )
    ));

  }
}
