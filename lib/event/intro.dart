
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weddingeventproject/event/login.dart';

void main(){
  runApp(MaterialApp(home: Intro(),debugShowCheckedModeBanner: false,));
}

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.pinkAccent,
      body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 50,left: 50, top: 300,bottom: 50),
            child: Text(
              "Welcome to WeddingEvents",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30,bottom: 50),
            child: Text(
              "We are going to ask you a few questions to set up your wedding app for an amazing experiance",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60,right: 60
            ),
            child: ElevatedButton(

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ev_Login()));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.black),
                )),
          ),
        ],
      ),

    );
  }
}
