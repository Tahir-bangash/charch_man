// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/sunday_offering.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

class add_pledges extends StatefulWidget {
  add_pledges({Key? key}) : super(key: key);

  @override
  State<add_pledges> createState() => _add_pledgesState();
}

class _add_pledgesState extends State<add_pledges> {
  Map<String, double> dataMap3 = {
    "Program A": 65,
    "Program B ": 11,
    "Program C": 11,
    "Program D": 11,
  };
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
              child: Text('PLEDGES',
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
                  dataMap: dataMap3,
                  animationDuration: Duration(milliseconds: 3000),
                  chartLegendSpacing: 42,
                  chartRadius: MediaQuery.of(context).size.width / 3.7,
                   colorList: colorList3,

                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 13,
                  centerText: "PELDGES\n \n2,500.00",
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
               
              ]),
              height: 185,
              width: 414,
              color: Colors.white),
          SizedBox(
            height: 10,
          ),
          Container(
             padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'income list',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    )
                  ],
                ),
                Divider(
                  height: 4,
                ),
                GestureDetector(
                   onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => sunday_offering())));
                          },
                  child: Container(
                
                
                    padding: EdgeInsets.all(10),
                    child:  Row(
                      children: [
                
                      
                    
                    
                     LinearPercentIndicator(
                      //leaner progress bar
                      width: 160, //width for progress bar
                      animation: true, //animation to show progress at first
                      animationDuration: 3000,
                      lineHeight: 13.0, //height of progress bar
                      leading: Padding(
                        //prefix content
                        padding: EdgeInsets.only(right: 15),
                        child: Text("Program A"), //left content
                      ),
                
                      percent: 1.0, // 30/100 = 0.3
                      center: Text("66.0%"),
                      linearStrokeCap: LinearStrokeCap
                          .roundAll, //make round cap at start and end both
                      progressColor:
                        Color(0xffFF800B),
                         //percentage progress bar color
                      backgroundColor:
                          Colors.orange[100], //background progressbar color
                    ),
                    SizedBox(width: 10,),
                      Text('39,000.00',),
                      ])
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  height: 4,
                  color: Colors.black45,
                ),
                // SizedBox(height: 5,),
                 GestureDetector(
                   onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => sunday_offering())));
                          },
                  child: Container(
                
                
                    padding: EdgeInsets.all(10),
                    child:  Row(
                      children: [
                
                      
                    
                    
                     LinearPercentIndicator(
                      //leaner progress bar
                      width: 71, //width for progress bar
                      animation: true, //animation to show progress at first
                      animationDuration: 3000,
                      lineHeight: 13.0, //height of progress bar
                      leading: Padding(
                        //prefix content
                        padding: EdgeInsets.only(right: 15),
                        child: Text("Program B"), //left content
                      ),
                
                      percent: 1.0, // 30/100 = 0.3
                      center: Text("11.67%,",),
                      linearStrokeCap: LinearStrokeCap
                          .roundAll, //make round cap at start and end both
                      progressColor:
                           Colors.black,//percentage progress bar color
                      backgroundColor:
                          Colors.orange[100], //background progressbar color
                    ),
                    SizedBox(width: 10,),
                      Text('7002.00',),
                      ])
                  ),
                ),

                Divider(
                  height: 4,
                  color: Colors.black45,
                ),
                 GestureDetector(
                   onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => sunday_offering())));
                          },
                  child: Container(
                
                
                    padding: EdgeInsets.all(10),
                    child:  Row(
                      children: [
                
                      
                    
                    
                     LinearPercentIndicator(
                      //leaner progress bar
                      width: 70, //width for progress bar
                      animation: true, //animation to show progress at first
                      animationDuration: 3000,
                      lineHeight: 13.0, //height of progress bar
                      leading: Padding(
                        //prefix content
                        padding: EdgeInsets.only(right: 35),
                        child: Text("Program C"), //left content
                      ),
                
                      percent: 1.0, // 30/100 = 0.3
                      center: Text("11.65%"),
                      linearStrokeCap: LinearStrokeCap
                          .roundAll, //make round cap at start and end both
                      progressColor:
                           Color(0xff00E0FF), //percentage progress bar color
                      backgroundColor:
                          Colors.orange[100], //background progressbar color
                    ),
                    SizedBox(width: 10,),
                      Text('7002',),
                      ])
                  ),
                ),

                Divider(
                  height: 4,
                  color: Colors.black45,
                ),
                GestureDetector(
                   onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => sunday_offering())));
                          },
                  child: Container(
                
                
                    padding: EdgeInsets.all(10),
                    child:  Row(
                      children: [
                
                      
                    
                    
                     LinearPercentIndicator(
                      //leaner progress bar
                      width: 70, //width for progress bar
                      animation: true, //animation to show progress at first
                      animationDuration: 3000,
                      lineHeight: 13.0, //height of progress bar
                      leading: Padding(
                        //prefix content
                        padding: EdgeInsets.only(right: 35),
                        child: Text("Program D"), //left content
                      ),
                
                      percent: 1.0, // 30/100 = 0.3
                      center: Text("11.65%"),
                      linearStrokeCap: LinearStrokeCap
                          .roundAll, //make round cap at start and end both
                      progressColor:
                           Color(0xffDBFF00), //percentage progress bar color
                      backgroundColor:
                          Colors.orange[100], //background progressbar color
                    ),
                    SizedBox(width: 10,),
                      Text('7002',),
                      ])
                  ),
                ),
              ],
            ),
            height: 278,
            color: Colors.white,
          )
        ]))); 
  }
}
