// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupMembers extends StatefulWidget {
  GroupMembers({Key? key}) : super(key: key);

  @override
  State<GroupMembers> createState() => _GroupMembersState();
}

class _GroupMembersState extends State<GroupMembers> {
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
                      Text('Group  Members',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700)),
                      Text(' Totol = 50',
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
                borderRadius: BorderRadius.vertical(
                    bottom: const Radius.circular(70.0)),
              ),
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
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
                        "V",
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
                    Icons.more_vert,
                    size: 30,
                    color: Color(0xff06BE18),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
