import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget{

  final String txt;
  VoidCallback onpress;
  ViewAll({
  Key ? key,
  required this.txt,
    required this.onpress
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(10)
        ),
        height: 40,width: 360,
        child: Center(child: Text(txt,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)),

      ),
    );
  }

}