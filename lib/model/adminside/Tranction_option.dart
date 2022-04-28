// ignore_for_file: prefer_const_constructors

import 'package:charch_mangments/add_transition.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class tranction_optiom extends StatefulWidget {
  tranction_optiom({Key? key}) : super(key: key);

  @override
  State<tranction_optiom> createState() => _tranction_optiomState();
}

class _tranction_optiomState extends State<tranction_optiom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('Expenses',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: const BoxDecoration(
              color: Color(0xff069013),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(70.0)),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => add_transation())));
        },
        child: Text("INCOME",
            textAlign: TextAlign.center,
            style:TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
            ),
            SizedBox(height: 15,),
             Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => add_transation())));
        },
        child: Text("EXPENSES",
            textAlign: TextAlign.center,
            style:TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
            ),
            SizedBox(height: 15,),
             Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => add_transation())));
        },
        child: Text("PLEDGES",
            textAlign: TextAlign.center,
            style:TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
            ),
            SizedBox(height: 15,),
            
             ] )
            
    ));
  }
}