import 'package:charch_mangments/model/adminside/add_branch_member.dart';
import 'package:charch_mangments/model/adminside/branches_team.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class branch_memebers extends StatefulWidget {
  branch_memebers({Key? key}) : super(key: key);

  @override
  State<branch_memebers> createState() => _branch_memebersState();
}

class _branch_memebersState extends State<branch_memebers> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('BRANCHES',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142,
            decoration: const BoxDecoration(
              color: Color(0xff069013),
              borderRadius: const BorderRadius.vertical(
                  bottom: const Radius.circular(70.0)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: Colors.white,
            height: 146,
            width: 435,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Text('',
                    //     style: GoogleFonts.roboto(
                    //         color: Colors.black,
                    //         fontSize: 15,
                    //         fontWeight: FontWeight.w700)),
                    Text('CHURCH SERVICE TITLE',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      width: 380,
                    ),
                    Align(
                        alignment: FractionalOffset(0.9, 0.0),
                        child: Column(children: [
                          Container(
                            height: 25,
                            child: TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: ((context) =>
                                  //             ADD_charch_Ser())));
                                },
                                child: Text('Edit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              add_branch_memebers())));
                                },
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              branches_team())));
                                },
                                child: Text('view',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                        ])),

                    Text('CHURCH SERVICE DATE',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 146,
            width: 435,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' BRANCHES ',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      width: 380,
                    ),
                    Align(
                        alignment: FractionalOffset(0.9, 0.0),
                        child: Column(children: [
                          Container(
                            height: 25,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Edit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('view',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                        ])),
                    Text('28/03/2022',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 146,
            width: 435,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' Maricle service  ',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(
                      width: 380,
                    ),
                    Align(
                        alignment: FractionalOffset(0.9, 0.0),
                        child: Column(children: [
                          Container(
                            height: 25,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Edit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('view',
                                    style: TextStyle(color: Colors.black))),
                          ),
                          Container(
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('delete',
                                    style: TextStyle(color: Colors.black))),
                          ),
                        ])),
                    Text('28/03/2022',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            child: Text('ADD Service'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: Color(0xff04440A),
            ),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => ADD_charch_Ser())));
            },
          )
        ])));
  }
}