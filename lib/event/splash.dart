import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddingeventproject/event/home.dart';

import 'intro.dart';

void main(){
  runApp(MaterialApp(home: Splash(),debugShowCheckedModeBanner: false,));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Intro()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(100),
                child: Image(image: AssetImage("assets/applogo/logo.png"),height: 200,width: 200,)),
            SizedBox(height: 10),
            Text(
              "Wedding Event",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
