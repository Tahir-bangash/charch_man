// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminappointment extends StatefulWidget {
  adminappointment({Key? key}) : super(key: key);

  @override
  State<adminappointment> createState() => _adminappointmentState();
}

class _adminappointmentState extends State<adminappointment> {
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
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ClipPath(
              child: Container(
                child: Center(
                  child: Text('Invites',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700)),
                ),
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Color(0xff069013),
              ),
              clipper: CustomClipPath(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            height: 112,
            color: Colors.white,
            width: 414,
            child: Align(
              child: Column(children: [
                SizedBox(
                  height: 10,
                  child: Expanded(
                    child: Align(
                        alignment: FractionalOffset(0.7, 0.3),
                        child: Icon(
                          Icons.call_sharp,
                          size: 25,
                          color: Colors.black,
                        )),
                  ),
                ),
                Expanded(
                  child: Align(
                      alignment: FractionalOffset(0.9, 0.3),
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
                ),
                Align(
                  alignment: FractionalOffset(0.2, 0.1),
                  child: Text('INVITEE NAME',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: FractionalOffset(0.2, 0.2),
                  child: Text('LOCATION',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: FractionalOffset(0.2, 0.3),
                  child: Text('INVITER',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Align(
                child: Column(children: [
                  SizedBox(
                    height: 10,
                    child: Expanded(
                      child: Align(
                          alignment: FractionalOffset(0.7, 0.3),
                          child: Icon(
                            Icons.call_sharp,
                            size: 25,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: FractionalOffset(0.9, 0.3),
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
                  ),
                  Align(
                    alignment: FractionalOffset(0.2, 0.1),
                    child: Text('CECILIA MARFO',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: FractionalOffset(0.2, 0.2),
                    child: Text('ACCRA-TEMA COM 1',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: FractionalOffset(0.2, 0.3),
                    child: Text('OSEI KWAME',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                ]),
              ),
              color: Colors.white,
              height: 104,
              width: 414,
              margin: EdgeInsets.all(0)),
          SizedBox(
            height: 46,
          ),
          TextButton(
            child: Text('ADD INVITE'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => adminappointment())));
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
