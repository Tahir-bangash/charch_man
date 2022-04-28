// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class aminaddGroup extends StatefulWidget {
  aminaddGroup({Key? key}) : super(key: key);

  @override
  State<aminaddGroup> createState() => _aminaddGroupState();
}

class _aminaddGroupState extends State<aminaddGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Column(children: [
          Container(
            child: Center(
              child: Text('ADD groups',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: BoxDecoration(
              color: const Color(0xff069013),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(70.0)),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 352,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: const TextField(
              decoration: const InputDecoration(
                hintStyle: const TextStyle(fontSize: 17),
                hintText: 'Group Name',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            child: const Text('Add  Group '),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: const Color(0xff04440A),
            ),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => aminaddGroup())));
            },
          )
        ]));
  }
}
