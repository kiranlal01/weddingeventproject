import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Makeup1(),debugShowCheckedModeBanner: false,));
}

class Makeup1 extends StatelessWidget{
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
              image: AssetImage("assets/images/makeup.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 300,),
                Text("Makeup1"),
                SizedBox(height: 10,),
                Text("Vogue"),
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
                Text("Choosing the best wedding makeup look for your big day is an incredibly personal affair. Once you've locked in the location, selected your dream dress, and addressed the endless array of details, defining your beauty approach is an essential final step. Whether you’re having a larger-than-life soirée or commemorating occasion with your partner in an intimate ceremony, it’s important to pick a bridal makeup look you’ll feel good about for years to come."),
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