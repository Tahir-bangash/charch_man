import 'package:charch_mangments/model/adminside/branch_member.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class add_branch_memebers extends StatefulWidget {
  add_branch_memebers({Key? key}) : super(key: key);

  @override
  State<add_branch_memebers> createState() => _add_branch_memebersState();
}

class _add_branch_memebersState extends State<add_branch_memebers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('ADD BRANCH',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: const BoxDecoration(
              color: Color(0xff069013),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(70.0)),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 50,
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'branch  Name',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 50,
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Choose group catagries',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 50,
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Date',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
           TextButton(     child: Text('ADD Branch'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => branch_memebers())));
            },
          )
        ])));
  }
}