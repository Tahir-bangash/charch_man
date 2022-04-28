// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:charch_mangments/model/adminside/Add_admin_Accounts.dart';
import 'package:charch_mangments/model/adminside/Shepard_list.dart';

import 'package:charch_mangments/model/adminside/addmember.dart';
import 'package:charch_mangments/model/adminside/adminGroup.dart';
import 'package:charch_mangments/model/adminside/admin_account_profile.dart';
import 'package:charch_mangments/model/adminside/admin_char.dart';
import 'package:charch_mangments/model/adminside/adminappointment.dart';
import 'package:charch_mangments/model/adminside/admincharchService.dart';
import 'package:charch_mangments/model/adminside/adminnotes.dart';
import 'package:charch_mangments/model/adminside/branch_member.dart';
import 'package:charch_mangments/model/adminside/cell.dart';
import 'package:charch_mangments/model/adminside/user.dart';
import 'package:charch_mangments/model/adminside/visitor.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'admininvites.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> tabs = [
    Center(child: Text("Home", style: TextStyle(color: Colors.white))),
    Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
    Center(child: Text("Notification", style: TextStyle(color: Colors.white))),
    Center(child: Text("Add item", style: TextStyle(color: Colors.white))),
  ];

  int currentPage = 0;

  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Center(
              child: Text('DASHBOARD',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700)),
            ),
            height: 142.0,
            decoration: new BoxDecoration(
              color: Color(0xff069013),
              borderRadius: new BorderRadius.vertical(
                  bottom: const Radius.circular(70.0)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('feb'), Icon(Icons.arrow_drop_down)],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black87,
                  ),
                  DataTable(columnSpacing: 20, columns: [
                    DataColumn(
                      label: Text('INCOME'),
                    ),
                    DataColumn(
                      label: Text('EXPENSES'),
                    ),
                    DataColumn(
                      label: Text('BALANCE'),
                    ),
                    DataColumn(
                      label: Text('PLEDGES'),
                    ),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('31,500.00')),
                      DataCell(Text('2,500.00')),
                      DataCell(Text('29,000.00')),
                      DataCell(Text('60,000.00')),
                    ])
                  ]),
                ],
              ),
              color: Color(0xffF9FFB1),
              height: 166,
              width: 424),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => admin_chart())));
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(Icons.add_chart_sharp,
                            size: 35.0, color: Color(0xff069013)),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text('Charts')
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => charch_service_dasboard())));
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(Icons.video_call_sharp,
                        size: 35.0, color: Color(0xff069013)),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  Text('charch Service ')
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => adminGroup())));
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.groups_outlined,
                      color: Color(0xff069013),
                      size: 35.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  Text('Groups ')
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      RawMaterialButton(
                        onPressed: () {
                           Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => cell())));
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(Icons.map_outlined,
                            size: 35.0, color: Color(0xff069013)),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                      Text('Cells')
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => branch_memebers())));
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(Icons.health_and_safety_rounded,
                        size: 35.0, color: Color(0xff069013)),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  Text('Branches ')
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => spepherding_list())));
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Text(
                      'P',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff069013)),
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  Text('SHEPHERDING'),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('New Member ',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
              SizedBox(width: 10),
              Text('Feb',
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              )),
          SizedBox(height: 10),
          Container(
              height: 58,
              color: Colors.white,
              width: 414,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff069013),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Kelvin Nii Armah',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.phone, size: 25, color: Color(0xff069013)),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.more_vert, size: 25, color: Color(0xff069013))
                ],
              ))
        ]),
      ),

      bottomNavigationBar: BottomAppBar(
          color: Color(0xff04440A),
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: currentPage == 0 ? Colors.white : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.groups_sharp,
                        color: currentPage == 0 ? Colors.white : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => adminGroup())));
                      }),
                  SizedBox.shrink(),
                  IconButton(
                      icon: Icon(
                        Icons.design_services_outlined,
                        color: currentPage == 0 ? Colors.white : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    charch_service_dasboard())));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.add_chart_sharp,
                        color: currentPage == 0 ? Colors.white : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Admin_Accounts())));
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.account_box_outlined,
                        color: currentPage == 0 ? Colors.white : Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    admin_account_profile())));
                      })
                ],
              ))),

      // bottomNavigationBar: FlashyTabBar(
      //   selectedIndex: currentPage,
      //   showElevation: true,
      //   onItemSelected: (index) => setState(() {
      //     currentPage = index;
      //   }),
      //   items: [
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.event),
      //       title: Text('Events'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text('Search'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.highlight),
      //       title: Text('Highlights'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('Settings'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('한국어'),
      //     ),
      //   ],
      // ),

      drawer: Drawer(
        backgroundColor: Color(0xff03790F),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Align(
                alignment: FractionalOffset(0.5, 0.3),
                child: Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profile.jpg'),
                        ))),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Center(
              child: Text(
                'Frank Quansah',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Invitees',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => admininvites())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Visitors',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => adminvistor())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Members',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => admin_member())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('SHEPHERDING LIST',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => spepherding_list())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Appointments',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => adminappointment())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Notes',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => adminnotes())));
              },
            ),
            ListTile(
              //  leading: Icon(Icons.favorite_border),
              title: Text('Users',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => admin_to_user())));
              },
            ),
              SizedBox(height: 30,),
            ListTile(
              title: 
             Text('Sign Out',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
            )
          ],
        ),
      ),
    );
  }
}
