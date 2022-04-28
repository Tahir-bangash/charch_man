// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categeries_setting extends StatefulWidget {
  categeries_setting({Key? key}) : super(key: key);

  @override
  State<categeries_setting> createState() => _categeries_settingState();
}

class _categeries_settingState extends State<categeries_setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('CATEGORIES SETTINGS',
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
          SizedBox(
            height: 15,
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Align(

            alignment: FractionalOffset(0.1, 0.2),
            child: Text("INCOME",
      style: TextStyle(
             color: Colors.black,
             decoration: TextDecoration.underline,
             decorationColor: Colors.yellow,
          )),
          ),
          SizedBox(width: 40,),
           Align(

            alignment: FractionalOffset(0.5, 0.1),
            child: Text("EXPENSES",
      style: TextStyle(
             color: Colors.black,
             decoration: TextDecoration.underline,
            
             decorationColor: Color(0xff5A5656),
          )),
          ),
           SizedBox(width: 40,),
           Align(

            alignment: FractionalOffset(0.5, 0.1),
            child: Text("Your text",
      style: TextStyle(
             color: Colors.black,
             decoration: TextDecoration.underline,
              
             decorationColor: Colors.red,
          )),
          )
           ],
         ),Divider(
           height: 3,
           color: Colors.black,
         ),
          Container(
              height: 58,
              
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFF0000),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Text('Sunday Offering',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300)),
                 
                ],
              )),
              Divider(
           height: 3,
           color: Colors.black,
         ),
          Container(
            
              height: 58,
              
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFF0000),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Text('wednesday Offering',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300)),
                 
                ],
              )),
              Divider(
           height: 3,
           color: Colors.black,
         ),
          Container(
              height: 58,
              
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFF0000),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Text('friday Offering',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300)),
                 
                ],
              )),
              Divider(
           height: 3,
           color: Colors.black,
         ),
          Container(
              height: 58,
              
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFF0000),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Text('other Offering',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                 
                ],
              )),
              SizedBox(height: 40,),
               TextButton(     child: Text('ADD sub categeries'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => ADD_charch_Ser())));
            },)
        ]
        )

        ));
  }
}
