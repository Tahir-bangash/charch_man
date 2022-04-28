// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/model/adminside/Groupmembers.dart';
import 'package:charch_mangments/model/adminside/adminaddGroup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminGroup extends StatefulWidget {
  adminGroup({Key? key}) : super(key: key);

  @override
  State<adminGroup> createState() => _adminGroupState();
}

class _adminGroupState extends State<adminGroup> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = ['edit ', 'delete', 'View'];
  final String title = '';

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
                  Text('Groups',
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
            borderRadius:
                new BorderRadius.vertical(bottom: const Radius.circular(70.0)),
          ),
        ),
        SizedBox(
          height: 15,
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
                    "G",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Text('Singing group',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
              SizedBox(
                width: 120,
              ),
              Expanded(
                child: Icon(
                  Icons.call_rounded,
                  size: 25,
                  color: Color(0xff06BE18),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              DropdownButton(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 20,
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
                  })
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
                    "G",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => GroupMembers())));
                },
                child: Text('EVANGELISM GROUP',
                    style: GoogleFonts.roboto(
                        color: Colors.black, fontWeight: FontWeight.w700)),
              ),
              SizedBox(
                width: 70,
              ),
              Expanded(
                child: Icon(
                  Icons.call_rounded,
                  size: 25,
                  color: Color(0xff06BE18),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DropdownButton(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 20,
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
                  })
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          child: Text('Add Groups'),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.teal,
            onSurface: Color(0xff04440A),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => aminaddGroup())));
          },
        )
      ]),
    ));
  }
}
