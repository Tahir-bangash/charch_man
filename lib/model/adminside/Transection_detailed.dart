// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class transitional_details extends StatefulWidget {
  transitional_details({Key? key}) : super(key: key);

  @override
  State<transitional_details> createState() => _transitional_detailsState();
}

class _transitional_detailsState extends State<transitional_details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: const Color(0xffE5E5E5),
          body: SingleChildScrollView(
              child: Column(children: [
            Container(
              child: Center(
                child: Text('Transaction details',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
              height: 142.0,
              decoration: const BoxDecoration(
                color: Color(0xff069013),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(70.0)),
              ),
            ),
            SizedBox(height: 15,),
            Container(height: 269,
            width: 414,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text("MAIN CATEGORY                  INCOME"),
                Text('SUB-CATEGORY                     SUNDAY OFFERING'),
                 Text("Amount                       15,000.00"),
                Text('SUB-CATEGORY                      SUNDAY OFFERING'),
                Text("Date                       30/04/2022"),
                Text("Title                         COVEVANT DAY OF RESCUE")

              ],
            ),
            
            ),
            
              ]
            )
            )
            
            );
  }
}