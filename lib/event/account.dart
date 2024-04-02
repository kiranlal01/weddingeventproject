import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Account(),debugShowCheckedModeBanner: false,));
}

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/Imges/lion.png"),fit: BoxFit.fill),
              ),
              accountName: Text("ACE",style: TextStyle(color: Colors.cyanAccent),), accountEmail: Text("ace@gmail.com",style: TextStyle(color: Colors.cyanAccent),),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("Assets/Imges/pnd.png"),),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("Assets/Imges/pig.png"),)
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Updte",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout",style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }

}