// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:charch_mangments/model/adminside/Transection_detailed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class sunday_offering extends StatefulWidget {
  sunday_offering({Key? key}) : super(key: key);

  @override
  State<sunday_offering> createState() => _sunday_offeringState();
}

class _sunday_offeringState extends State<sunday_offering> {
  Map<String, double> dataMap = {
    "SUNDAY ": 65,
    "WEDNESDAY ": 11,
    "Friday": 11,
    "Others": 11,
  };
  @override
  Widget build(BuildContext context) {                                                                     
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('Sunday Offering',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
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
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(children: [
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
                Text('COVENANT DAY OF RESCUE',
                    style: TextStyle(color: Colors.black)),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      LinearPercentIndicator(
                        //leaner progress bar
                        width: 220, //width for progress bar
                        animation: true, //animation to show progress at first
                        animationDuration: 3000,
                        lineHeight: 13.0, //height of progress bar
                        leading: Padding(
                          //prefix content
                          padding: EdgeInsets.only(right: 15),
                          child: Text(""), //left content
                        ),

                        percent: 1.0, // 30/100 = 0.3
                        center: Text("90.9.0%"),
                        linearStrokeCap: LinearStrokeCap
                            .roundAll, //make round cap at start and end both
                        progressColor: Color(0xffFF800B),
                        //percentage progress bar color
                        backgroundColor:
                            Colors.orange[100], //background progressbar color
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '15,000.00',
                      ),
                      
                      
                    ])
                    
                    ),
                    Row(
                children: [
                   Text(
                  '30/04/2022',
                  style: TextStyle(color: Colors.black),
                    ) ],
              
            
            
            
                
                ),
                Divider(
                  height: 4,
                ),
                Text(
                  'COMMUNION SERVICE',
                  style: TextStyle(color: Colors.black),
                ),
                 
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      LinearPercentIndicator(
                        //leaner progress bar
                        width: 100, //width for progress bar
                        animation: true, //animation to show progress at first
                        animationDuration: 3000,
                        lineHeight: 13.0, //height of progress bar
                        leading: Padding(
                          //prefix content
                          padding: EdgeInsets.only(right: 15),
                          child: Text(""), //left content
                        ),

                        percent: 1.0, // 30/100 = 0.3
                        center: Text("9.10%"),
                        linearStrokeCap: LinearStrokeCap
                            .roundAll, //make round cap at start and end both
                        progressColor: Colors.blue,
                        //percentage progress bar color
                        backgroundColor:
                            Colors.orange[100], //background progressbar color
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        '1500.0',
                      ),
                    ])),
              Row(
                children: [
                   Text(
                  '23/04/2022',
                  style: TextStyle(color: Colors.black),
                    ) ],
              
            
            
            
                
                )
              ]))
        ])));
  }
}
