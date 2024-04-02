import 'package:flutter/material.dart';
import 'package:weddingeventproject/event/vendorcategories.dart';

import 'home.dart';

class bttm extends StatefulWidget{
  @override
  State<bttm> createState() => _bttmState();
}

class _bttmState extends State<bttm> {

  var screen=[
    ev_Home(),
    VendorCategories(),
  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.event),label: "Vendors"),
          BottomNavigationBarItem(icon: Icon(Icons.backpack),label: "Packages"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],

      ),
    );
  }
}