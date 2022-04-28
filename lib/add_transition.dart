// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class add_transation extends StatefulWidget {
  add_transation({Key? key}) : super(key: key);

  @override
  State<add_transation> createState() => _add_transationState();
}

class _add_transationState extends State<add_transation> {
   String dropdownValue = 'One';
   @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('ADD Transactions',
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
          // Navigator.push(
          //     context,
              // MaterialPageRoute(
              //     builder: ((context) => CustomBottomNavigationBar())));
        },
        child: Text("TITLE",
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
          // Navigator.push(
          //     context,
              // MaterialPageRoute(
              //     builder: ((context) => CustomBottomNavigationBar())));
        },
        child:  DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      ),
            ),),
            SizedBox(height: 15,),
             Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // Navigator.push(
          //     context,
              // MaterialPageRoute(
              //     builder: ((context) => CustomBottomNavigationBar())));
        },
        child: Text("DATE",
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
          // Navigator.push(
          //     context,
              // MaterialPageRoute(
              //     builder: ((context) => CustomBottomNavigationBar())));
        },
        child: Text("AMOUNT",
            textAlign: TextAlign.center,
            style:TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
            ),
            
             ] )
            
    ));
  }
}