import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Jewellery1(),debugShowCheckedModeBanner: false,));
}

class Jewellery1 extends StatelessWidget{
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
              image: AssetImage("assets/images/jewellery.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 420,),
                Text("Jewellery1"),
                SizedBox(height: 10,),
                Text("Kalyan Jewellers"),
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
                Text("Experience the elegance and luxury of the Neetu Art Gold Plated Bridal Necklace Set. This stunning set is expertly crafted with high-quality materials, delivering a timeless and sophisticated look. Elevate any bridal ensemble with the intricate design and delicate detailing of this necklace set. Note: Image may be vary slightly from the actual product."),
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