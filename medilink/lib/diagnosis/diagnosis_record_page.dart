import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medilink/primary.dart';
import 'package:medilink/wearable/blood_sugar_chart.dart';
import 'package:medilink/wearable/bloodpressure_chart.dart';
import 'package:medilink/wearable/bloodpressure_menu.dart';

class DiagonosisRecordPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('정기 진료 기록',style:TextStyle(color: Colors.black,fontFamily: customfonts.fonts_SemiBold)),
        iconTheme: IconThemeData(color:Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(children:[
    DataTable(
      decoration: BoxDecoration(color:color1.withOpacity(0.1),borderRadius: BorderRadius.circular(20)),
headingTextStyle: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),

        columns: [ DataColumn(label: Text('진료 날짜')),
                DataColumn(label: Text('주치의'),),
      DataColumn(label: Text('병원')),
      DataColumn(label: Text('진료 내용',)),
    ],columnSpacing: 10,
        rows: [ DataRow( cells: 
        [ DataCell(Text('2021/11/29')),
          DataCell(Text('김의사')),
          DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
        ],),
          DataRow( cells:
          [ DataCell(Text('2021/9/20')),
            DataCell(Text('김의사')),
            DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2021/7/3')),
            DataCell(Text('김의사')),
            DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2021/4/29')),
            DataCell(Text('박의사')),
            DataCell(Text('옆동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2021/2/15')),
            DataCell(Text('박의사')),
            DataCell(Text('옆동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2020/12/3')),
            DataCell(Text('김의사')),
            DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2020/10/3')),
            DataCell(Text('김의사')),
            DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
          DataRow( cells:
          [ DataCell(Text('2020/7/29')),
            DataCell(Text('김의사')),
            DataCell(Text('동네의원')),DataCell(Text('고혈압 정기 진료 및 처방')),
          ],),
        ]
    )
      ])
    );

  }
}
