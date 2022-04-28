// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/adminallnotes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminnotes extends StatefulWidget {
  adminnotes({Key? key}) : super(key: key);

  @override
  State<adminnotes> createState() => _adminnotesState();
}

class _adminnotesState extends State<adminnotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(children: [
          Container(
            child: Center(
              child: Text('ADD Notes',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: BoxDecoration(
              color: Color(0xff069013),
              borderRadius: BorderRadius.vertical(
                  bottom: const Radius.circular(70.0)),
            ),
          ),
          Container(
            width: 352,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Title'),
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Title ',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 352,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Date'),
                hintStyle: TextStyle(fontSize: 17),
                suffixIcon: Icon(Icons.date_range),
                hintText: 'Date',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 352,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            child: Text('ADD Notes'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => alladminnotes())));
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
