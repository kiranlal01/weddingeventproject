import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Food1(),debugShowCheckedModeBanner: false,));
}

class Food1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Dress1"),),
      body: Center(
        child: Container(
          height: 800,width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage("assets/images/food.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 300,),
                Text("Food1"),
                SizedBox(height: 10,),
                Text("Mangalya"),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 5,),
                    Text("Bangalore")
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.currency_rupee),
                    SizedBox(width: 5,),
                    Text("20000")
                  ],
                ),
                SizedBox(height: 10,),
                // Text("Description"),
                // SizedBox(height: 10,),
                Text("Product Details"),
                SizedBox(height: 5,),
                Text("The food item is prepared by our experienced chefs are in accordance with the taste and preference of the clients. We have a team of skilled professionals to prepare various dishes. Our chefs have specialty in preparing authentic cuisines of different states. Our customers can select the appetizers, entrees and desserts as per their choice & tastes for creating a lip-smacking feast. Our respected customers can avail from us excellent Marriage Catering Services at very reasonable prices."),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        height: 40,width: 300,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message),
                            SizedBox(width: 5,),
                            Center(child: Text("message",style: TextStyle(fontSize: 18),)),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          height: 40,width: 40,
                          child: Icon(Icons.call,color: Colors.green,))
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

}