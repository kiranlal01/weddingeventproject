import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget{
  final Image img;
  final String addrss;
  AddressCard({
    Key? key,
    required this.img,
    required this.addrss
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.red
            ]

          )
          // borderRadius: BorderRadius.circular(10)
        ),
        height: 200,width: 400,
        child: Row(
          children: [
            ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100)),
                child: img),
            SizedBox(width: 10,),
            Text(addrss,style: TextStyle(color: Colors.white,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}