// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/addshepard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class spepherding_list extends StatefulWidget {
  spepherding_list({Key? key}) : super(key: key);

  @override
  State<spepherding_list> createState() => _spepherding_listState();
}

class _spepherding_listState extends State<spepherding_list> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'edit ',
    'delete',
  ];
  final String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
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
                    Text('Sheperd List ',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 32,
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
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(0),
            height: 90,
            color: Colors.white,
            width: 414,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.yellow,
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      //  height: 10,
                      width: 10,
                    ),
                    Text('SHEPHERD FULL NAME',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Align(
                  alignment: FractionalOffset(0.9, 0.2),
                  child: Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Text('SHEPHERD FULL NAME',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(0),
            height: 90,
            color: Colors.white,
            width: 414,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.yellow,
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      //  height: 10,
                      width: 10,
                    ),
                    Text('SHEPHERD FULL NAME',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(width: 10),
                Align(
                  alignment: FractionalOffset(0.9, 0.2),
                  child: Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.yellow,
                      child: Center(
                        child: Text(
                          "",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Text('SHEPHERD FULL NAME',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.red,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
          TextButton(
            child: Text('Add shepard'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => add_shapered())));
            },
          )
        ],
      ),
    );
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
