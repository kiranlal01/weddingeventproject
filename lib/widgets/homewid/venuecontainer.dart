import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VenueContainer extends StatelessWidget{

  final Image img;
  final String title;
  final IconData icon;
  final String subtitle;
  final String rate;
  final String price;
  VenueContainer({
    Key? key,
    required this.img,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.rate,
    required this.price,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 100,width: 150,
                child: img,
              ),
            ),
            Positioned(
              top: 5,right: 5,
              child: Container(
                color: Colors.green,
                height: 15,width: 30,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon,color: Colors.white,size: 10,),
                    Text(rate,style: TextStyle(color: Colors.white,fontSize: 10),)
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Text(title,style: TextStyle(color: Colors.black),),
        Text(subtitle,style: TextStyle(color: Colors.black,fontSize: 10),),
        Text(price,style: TextStyle(color: Colors.red,fontSize: 15),)
      ],
    );
  }

}