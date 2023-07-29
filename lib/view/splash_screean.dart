import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/view/home_screen.dart';

import '../core/utils/app_color.dart';

class splashScreean extends StatefulWidget {
  const splashScreean({Key? key}) : super(key: key);

  @override
  State<splashScreean> createState() => _splashScreeanState();
}

class _splashScreeanState extends State<splashScreean> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
Get.to(HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover,
              opacity: 0.5,
            )),
        child: Center(
          child: Text(
            " Movies Netflix",
            style: GoogleFonts.lobster(
              color:  AppColors.PrimaryColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
      
    );
  }
}
