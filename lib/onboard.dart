import 'package:charch_mangments/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/adminside/adminlogin.dart';
import 'model/allinonboardscreen.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
        "assets/images/first.png",
        "MANAGE YOUR CHURCH MEMBERS AND VISITORS WHO VISITS YOUR CHURCH.",
        "MEMBERS/VISITORS MANAGEMENT"),
    AllinOnboardModel(
        "assets/images/2.png",
        "MANAGE ALL YOUR CHURCH FINANCIALS WITH EASE ANYWHERE WHENEVER",
        " ACCOUNT MANAGEMENT"),
    AllinOnboardModel(
        "assets/images/3.png",
        "GROW YOUR CHURCH WITH THESE AMAZING FETURES -GROUPS -CELLS -SHEPHERDING -INVITEES -APPOINTMENTS -NOTES",
        " FEATURESS FOR MONITORING GROWTH"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Align(
          //   alignment: FractionalOffset(0.2, 0.0),
          //   child: Container(
          //     height: 275,
          //     width: 275,
          //     decoration: BoxDecoration(
          //       color: Colors.red,
          //       shape: BoxShape.circle,
          //     ),
          //   ),
          // ),
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: allinonboardlist.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                    title: allinonboardlist[index].titlestr,
                    description: allinonboardlist[index].description,
                    imgurl: allinonboardlist[index].imgStr);
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.width * 0.44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                allinonboardlist.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.0,
            left: MediaQuery.of(context).size.width * 0.63,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 18, color:Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary:Color(0xff6C63FF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? primarygreen : Colors.white60,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  PageBuilderWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 248,
            width: 890,
            margin: const EdgeInsets.all( 40),
            child: Center(child: Image.asset(imgurl)),
          ),
          const SizedBox(
            height: 20,
          ),
          //Tite Text

          Text(title,
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 20,
          ),
          //discription
          Text(description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: primarygreen,
                fontSize: 14,
              ))
        ],
      ),
    );
  }
}
