import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CircleImage extends StatelessWidget{

  final Image img;
  final String txt;
  VoidCallback onpress;

  CircleImage({
    Key? key,
    required this.img,
    required this.txt,
    required this.onpress
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Column(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(80),
            child: Container(
              height: 80,width: 80,
              child: img,
            ),
          ),
          SizedBox(height: 5,),
          Center(child: Text(txt,style: TextStyle(color: Colors.black),))
        ],
      ),
    );
  }

}