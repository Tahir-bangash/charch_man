// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class add_shapered extends StatefulWidget {
  add_shapered({Key? key}) : super(key: key);

  @override
  State<add_shapered> createState() => _add_shaperedState();
}

class _add_shaperedState extends State<add_shapered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text('',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700)),
                      Text('ADD SHEPHERDING',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700)),
                    ],
                  )
                ],
              ),
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
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(radius: 10, backgroundColor: Colors.yellow),
              SizedBox(
                width: 18,
              ),
              Text('SHEPHERD ',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 262,
            height: 39,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Full Name',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 262,
            height: 39,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Phone Number',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
              ),
              SizedBox(
                width: 18,
              ),
              Text('sheep ',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 262,
            height: 39,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Full Name',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 262,
            height: 39,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Phone Number',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text('ASSIGN SHEPHERD'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              print('Pressed');
            },
          )
        ]));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
