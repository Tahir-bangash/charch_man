// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/Tranction_option.dart';
import 'package:charch_mangments/model/adminside/add_Incomes.dart';
import 'package:charch_mangments/model/adminside/add_expenses.dart';
import 'package:charch_mangments/model/adminside/add_pledges.dart';
import 'package:charch_mangments/model/adminside/categaries_setting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pie_chart/pie_chart.dart';

class Admin_Accounts extends StatefulWidget {
  Admin_Accounts({Key? key}) : super(key: key);

  @override
  State<Admin_Accounts> createState() => _Admin_AccountsState();
}

class _Admin_AccountsState extends State<Admin_Accounts> {
  Map<String, double> dataMap = {
    "SUNDAY ": 65,
    "WEDNESDAY ": 11,
    "Friday": 11,
    "Others": 11,
  };
  Map<String, double> dataMap2 = {
    "Land ": 65,
    "ANOINTING OIL ": 11,
    "lighting": 11,
    "Others": 11,
  };
  Map<String, double> dataMap3 = {
    "Program A": 65,
    "Program B ": 11,
    "Program C": 11,
    "Program D": 11,
  };
   final colorList1 = <Color>[
    Color(0xffFF800B),
    Color(0xff00E0FF),
    Color(0xffFF00D6),
     
     Color(0xffDBFF00)


  ];
   final colorList2 = <Color>[
    Color(0xffFF800B),
    Color(0xffF00EFF),
    Color(0xff14DA28),
    
     
     Color(0xffDBFF00)


  ];
   final colorList3 = <Color>[
    Color(0xffFF800B),
    Colors.black,
    Color(0xff14DA28),
    
     
     Color(0xffDBFF00)


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('Accounts',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: const BoxDecoration(
              color: Color(0xff069013),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(70.0)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Column(children: [
Text(''),
SizedBox(height:7 ,),

                PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 3000),
                  chartLegendSpacing: 42,
                  chartRadius: MediaQuery.of(context).size.width / 3.7,
                  colorList: colorList1,

                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 13,
                  centerText: "INCOME\n \n31500.00 ",
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle( fontSize: 10),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: true,
                    decimalPlaces: 0,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                ),
                Align(
                  alignment: FractionalOffset(0.9, 0.8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => add_income())));
                    },
                    child: Icon(Icons.arrow_forward_sharp,
                        size: 30, color: Colors.black),
                  ),
                )
              ]),
              height: 185,
              width: 414,
              color: Colors.white),
          SizedBox(
            height: 10,
          ),
           Container(
              child: Column(children: [
Text(''),
SizedBox(height:7 ,),

                PieChart(
                  dataMap: dataMap2,
                  animationDuration: Duration(milliseconds: 3000),
                  chartLegendSpacing: 42,
                  chartRadius: MediaQuery.of(context).size.width / 3.7,
                  colorList: colorList2,

                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 13,
                  centerText: "EXPENSES\n \n2,500.0 ",
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle( fontSize: 10),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: true,
                    decimalPlaces: 0,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                ),
                Align(
                  alignment: FractionalOffset(0.9, 0.8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => add_expenses())));
                    },
                    child: Icon(Icons.arrow_forward_sharp,
                        size: 30, color: Colors.black),
                  ),
                )
              ]),
              height: 185,
              width: 414,
              color: Colors.white),
          SizedBox(
            height: 10,
          ),
           Container(
              child: Column(children: [
Text(''),
SizedBox(height:7 ,),

                PieChart(
                  dataMap: dataMap3,
                  animationDuration: Duration(milliseconds: 3000),
                  chartLegendSpacing: 42,
                  chartRadius: MediaQuery.of(context).size.width / 3.7,
                  colorList: colorList3,

                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 13,
                  centerText: "PELDGES\n \n2,500.00 ",
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle( fontSize: 10),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: false,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: true,
                    decimalPlaces: 0,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                ),
                Align(
                  alignment: FractionalOffset(0.9, 0.8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => add_pledges())));
                    },
                    child: Icon(Icons.arrow_forward_sharp,
                        size: 30, color: Colors.black),
                  ),
                )
              ]),
              height: 185,
              width: 414,
              color: Colors.white),
          Align(
            alignment: FractionalOffset(0.9, 0.8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => tranction_optiom())));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff069013),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('ADD Categries'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => categeries_setting())));
            },
          ),
        ])));
  }
}
