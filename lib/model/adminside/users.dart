import 'package:charch_mangments/model/adminside/user.dart';
import 'package:charch_mangments/model/adminside/userDashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class add_user_login extends StatefulWidget {
  add_user_login({Key? key}) : super(key: key);

  @override
  State<add_user_login> createState() => _add_user_loginState();
}

class _add_user_loginState extends State<add_user_login> {
  @override
  Widget build(BuildContext context) {
    return 
 Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: Center(
              child: Text('User Profile ',
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
            height: 20,
          ),
           
                        SizedBox(height: 20,),
                          Container(
            width: 352,
            height:39 ,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
               
                label: Text('Full name '),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
           SizedBox(height: 20,),
                          Container(
            width: 352,
            height:39 ,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                label: Text('Email '),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
           SizedBox(height: 20,),
                          Container(
            width: 352,
            height:39 ,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                label: Text('Password '),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
           SizedBox(height: 20,),
                          Container(
            width: 352,
            height:39 ,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                label: Text('Confirm password'),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          
                        SizedBox(height: 20,),
                        TextButton(
            child: const Text('Update '),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              onSurface: const Color(0xff04440A),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => userDashoard())));
            },
          )
            ]
            ),
            ));
  }
}