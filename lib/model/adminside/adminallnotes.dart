// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class alladminnotes extends StatefulWidget {
  alladminnotes({Key? key}) : super(key: key);

  @override
  State<alladminnotes> createState() => _alladminnotesState();
}

class _alladminnotesState extends State<alladminnotes> {
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
            child: Center(
              child: Text('Notes',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: BoxDecoration(
              color: Color(0xff069013),
              borderRadius:
                  BorderRadius.vertical(bottom: const Radius.circular(70.0)),
            ),
          ),
          Row(
            children: [
              Text('feb',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
              Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: Colors.black,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(0),
            height: 90,
            color: Colors.white,
            width: 414,
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    //  height: 10,
                    width: 10,
                  ),
                  Text(' Title',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 50,
                  ),
                ]),
                SizedBox(width: 10),
                Align(
                    alignment: FractionalOffset(0.9, 0.2),
                    child: DropdownButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        })),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Text('Date',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
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
                Row(children: [
                  SizedBox(
                    //  height: 10,
                    width: 10,
                  ),
                  Text(' Title',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 50,
                  ),
                ]),
                SizedBox(width: 10),
                Align(
                    alignment: FractionalOffset(0.9, 0.2),
                    child: DropdownButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        })),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Text('Date',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
            child: Text('Add Notes'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => add_shapered())));
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
