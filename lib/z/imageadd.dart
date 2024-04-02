import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: imgs(),debugShowCheckedModeBanner: false,));
}

class imgs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("AppBar")),
      body: Container(
        height: 45,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          image: DecorationImage(
            alignment: Alignment.centerRight,
            image: AssetImage('assets/images/1venue.png'),
          ),
        ),
      )
    );
  }

}