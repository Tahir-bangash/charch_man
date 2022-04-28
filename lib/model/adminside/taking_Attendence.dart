// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Taking_attendence extends StatefulWidget {
  Taking_attendence({Key? key}) : super(key: key);

  @override
  State<Taking_attendence> createState() => _Taking_attendenceState();
}

class _Taking_attendenceState extends State<Taking_attendence> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
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
                      Text('TAKE ATTENDANCE',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                      Text(' Singing  Group',
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
              decoration: new BoxDecoration(
                color: Color(0xff069013),
                borderRadius: new BorderRadius.vertical(
                    bottom: const Radius.circular(70.0)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: 414,
              color: Colors.white,
              child: Row(children: [
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
                Text('Frank',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 160,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Color(0xff06BE18),
                ),
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
              ]),
            ),
            SizedBox(
              height: 10,
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
                  Text('mikes',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 160,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  ),
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                  Text('Eugen',
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 160,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  ),
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                    width: 160,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  ),
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 45,
                width: 414,
                color: Colors.white,
                child: Row(children: [
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
                    width: 160,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  ),
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                      });
                    },
                  ),
                ]))
          ]),
        ));
  }
}
