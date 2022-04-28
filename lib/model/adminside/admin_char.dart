// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/absents.dart';
import 'package:charch_mangments/model/adminside/add_member_vistor.dart';
import 'package:charch_mangments/model/adminside/present.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class admin_chart extends StatefulWidget {
  admin_chart({Key? key}) : super(key: key);

  @override
  State<admin_chart> createState() => _admin_chartState();
}

class _admin_chartState extends State<admin_chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              child: Column(children: [
                Text('',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                Text('Chart',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 15,
                ),
                CircularPercentIndicator(
                  //circular progress indicator
                  radius: 120.0, //radius for circle
                  lineWidth: 15.0, //width of circle line
                  animation:
                      true, //animate when it shows progress indicator first
                  percent:
                      60 / 100, //vercentage value: 0.6 for 60% (60/100 = 0.6)
                  center: Text(
                    "60.0%",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ), //center text, you can set Icon as well
                  //footer text
                  backgroundColor:
                      Color(0xffFFFFFF), //backround of progress bar
                  circularStrokeCap: CircularStrokeCap
                      .round, //corner shape of progress bar at start/end
                  progressColor: Colors.yellow,
                  //progress bar color
                ),
                SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  //leaner progress bar
                  width: 160, //width for progress bar
                  animation: true, //animation to show progress at first
                  animationDuration: 1000,
                  lineHeight: 30.0, //height of progress bar
                  leading: Padding(
                    //prefix content
                    padding: EdgeInsets.only(right: 35),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => preset())));
                        },
                        child: Text(
                          "Presents",
                          style: TextStyle(backgroundColor: Colors.white),
                        )), //left content
                  ),
                  trailing: Padding(
                    //sufix
                    padding: EdgeInsets.only(left: 25),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => absents())));
                        },
                        child: Text(
                          "Absent",
                          style: TextStyle(backgroundColor: Colors.yellow),
                        )), //right content
                  ),
                  percent: 0.3, // 30/100 = 0.3
                  center: Text("30.0%"),
                  linearStrokeCap: LinearStrokeCap
                      .roundAll, //make round cap at start and end both
                  progressColor:
                      Color(0xffFFFFFF), //percentage progress bar color
                  backgroundColor: Colors.yellow, //background progressbar color
                ),
              ]),
              height: 290.0,
              decoration: const BoxDecoration(
                color: Color(0xff069013),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(70.0)),
              )
              
              ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )
              ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: FractionalOffset(0.9, 0.8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => add_member_vistor())));
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
        ])));
  }
}
