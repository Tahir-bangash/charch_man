// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:charch_mangments/model/adminside/add_user.dart';
import 'package:charch_mangments/model/adminside/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class admin_to_user extends StatefulWidget {
  admin_to_user({Key? key}) : super(key: key);

  @override
  State<admin_to_user> createState() => _admin_to_userState();
}

class _admin_to_userState extends State<admin_to_user> {
  // Initial Selected Value
  String dropdownvalue = 'Edit';

  // List of items in our dropdown menu
  List<String> items = [
    'edit ',
    'delete',
  ];
  final String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(children: [
          Container(
            child: Center(
              child: Text('Users',
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
              height: 45,
              width: 414,
              color: Colors.white,
              child: Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text('Frank',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 180,
                ),
                SizedBox(
                  width: 22,
                ),
                 DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
          if(newValue=='Edit')
          {
            Navigator.push(context,
                 MaterialPageRoute(builder: ((context) => add_user_login())));
          }
          
        });
      },
      items: <String>['Edit', 'delete']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    
           )
              ])),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 45,
              width: 414,
              color: Colors.white,
              child: Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text('Frank',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 180,
                ),
                SizedBox(
                  width: 22,
                ),
                 DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
          if(newValue=='Edit')
          {
            Navigator.push(context,
                 MaterialPageRoute(builder: ((context) => admin_to_user())));
          }
          
        });
      },
      items: <String>['Edit', 'delete']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    
           )
              ])),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 45,
              width: 414,
              color: Colors.white,
              child: Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text('Frank',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 180,
                ),
                SizedBox(
                  width: 22,
                ),
                 DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
          if(newValue=='Edit')
          {
            Navigator.push(context,
                 MaterialPageRoute(builder: ((context) => admin_to_user())));
          }
          
        });
      },
      items: <String>['Edit', 'delete']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    
           )
              ])),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 45,
              width: 414,
              color: Colors.white,
              child: Row(children: [
                SizedBox(
                  width: 25,
                ),
                Text('trank',
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 180,
                ),
                SizedBox(
                  width: 22,
                ),
                 DropdownButton<String>(
      value: dropdownvalue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
          if(newValue=='Edit')
          {
            Navigator.push(context,
                 MaterialPageRoute(builder: ((context) => admin_to_user())));
          }
          
        });
      },
      items: <String>['Edit', 'delete']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    
           )
            ]
           )
           ),
          Align(
            alignment: FractionalOffset(0.9, 0.8),
            child: TextButton(
              onPressed: () {
                 Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => add_users())));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff069013),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
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
