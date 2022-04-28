// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addadmininvites extends StatefulWidget {
  addadmininvites({Key? key}) : super(key: key);

  @override
  State<addadmininvites> createState() => _addadmininvitesState();
}

class _addadmininvitesState extends State<addadmininvites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(children: [
          Container(
            child: Center(
              child: Text('Invites',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: new BoxDecoration(
              color: Color(0xff069013),
              borderRadius: new BorderRadius.vertical(
                  bottom: const Radius.circular(70.0)),
            ),
          ),
          Container(
            width: 352,
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
            width: 352,
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
          SizedBox(height: 15),
          Container(
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Location',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Inviter',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Inviter Phone Number',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 352,
            height: 151,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Inviter Phone Number',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text('ADD INVITE'),
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
