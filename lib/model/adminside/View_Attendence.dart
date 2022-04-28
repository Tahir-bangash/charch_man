// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class View_Attendence extends StatefulWidget {
  View_Attendence({Key? key}) : super(key: key);

  @override
  State<View_Attendence> createState() => _View_AttendenceState();
}

class _View_AttendenceState extends State<View_Attendence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        child: Column(
          children: [
            Column(
              children: [
                Text('',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700)),
                Text('View ATTENDANCE',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
                Text(' Sanday Service',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
                Text(' 28/03/2022',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
              ],
            )
          ],
        ),
        width: 414,
        height: 142.0,
        decoration: BoxDecoration(
          color: Color(0xff069013),
          borderRadius:
              new BorderRadius.vertical(bottom: const Radius.circular(70.0)),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          height: 251,
          width: 414,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: CircularPercentIndicator(
                    //circular progress indicator
                    radius: 120.0, //radius for circle
                    lineWidth: 15.0, //width of circle line
                    animation:
                        true, //animate when it shows progress indicator first
                    percent:
                        60 / 100, //vercentage value: 0.6 for 60% (60/100 = 0.6)
                    center: Text(
                      "60.0%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ), //center text, you can set Icon as well
                    //footer text
                    backgroundColor:
                        Colors.lightGreen[300], //backround of progress bar
                    circularStrokeCap: CircularStrokeCap
                        .round, //corner shape of progress bar at start/end
                    progressColor: Colors.redAccent, //progress bar color
                  )),
              Container(
                padding: EdgeInsets.all(0),
                child: LinearPercentIndicator(
                  //leaner progress bar
                  width: 160, //width for progress bar
                  animation: true, //animation to show progress at first
                  animationDuration: 1000,
                  lineHeight: 30.0, //height of progress bar
                  leading: Padding(
                    //prefix content
                    padding: EdgeInsets.only(right: 15),
                    child: Text("Presents"), //left content
                  ),
                  trailing: Padding(
                    //sufix
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Absents"), //right content
                  ),
                  percent: 0.3, // 30/100 = 0.3
                  center: Text("30.0%"),
                  linearStrokeCap: LinearStrokeCap
                      .roundAll, //make round cap at start and end both
                  progressColor:
                      Colors.redAccent, //percentage progress bar color
                  backgroundColor:
                      Colors.orange[100], //background progressbar color
                ),
              ),
              Center(
                child: Text(
                  "Total expected peoples=200",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Divider(
                height: 15,
                thickness: 1,
                indent: 10,
                endIndent: 0,
                color: Color.fromARGB(255, 58, 31, 31),
              ),
            
             
             
              Container(
                height: 45,
                width: 414,
                color: Colors.white,
                child: Row(
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
                    SizedBox(
                      width: 25,
                    ),
                    Text('Gideo',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 180,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.call_rounded,
                        size: 30,
                        color: Color(0xff06BE18),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Icon(
                      Icons.check,
                      size: 30,
                      color: Color(0xff06BE18),
                    )
                  ],
                ),
              ),

            ],
          )),
          SizedBox(height: 12,),
              Container(
                height: 45,
                width: 414,
                color: Colors.white,
                child: Row(
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
                    SizedBox(
                      width: 25,
                    ),
                    Text('Gideo',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 180,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.call_rounded,
                        size: 30,
                        color: Color(0xff06BE18),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Icon(
                      Icons.check,
                      size: 30,
                      color: Color(0xff06BE18),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: 414,
                color: Colors.white,
                child: Row(
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
                    SizedBox(
                      width: 25,
                    ),
                    Text('Gideo',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 180,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.call_rounded,
                        size: 30,
                        color: Color(0xff06BE18),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Icon(
                      Icons.clear,
                      size: 30,
                      color: Color(0xff06BE18),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Container(
                height: 45,
                width: 414,
                color: Colors.white,
                child: Row(
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
                    SizedBox(
                      width: 25,
                    ),
                    Text('Gideo',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 180,
                    ),
                    Expanded(
                      child: Icon(
                        Icons.call_rounded,
                        size: 30,
                        color: Color(0xff06BE18),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Icon(
                      Icons.clear,
                      size: 30,
                      color: Color(0xff06BE18),
                    )
                  ],
                ),
              ),
    ])));
  }
}
