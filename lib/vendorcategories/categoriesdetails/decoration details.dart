import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Decoration1(),debugShowCheckedModeBanner: false,));
}

class Decoration1 extends StatelessWidget{
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
              image: AssetImage("assets/images/decorators.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 350,),
                Text("Decoration1"),
                SizedBox(height: 10,),
                Text("Wedding Decorations "),
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
                    Text("50000")
                  ],
                ),
                SizedBox(height: 10,),
                // Text("Description"),
                // SizedBox(height: 10,),
                Text("Product Details"),
                SizedBox(height: 5,),
                Text("Weddings are an important part of Indian culture, and we understand the importance of making your special day memorable. At Dream Wedding Events, we offer the best wedding decoration services in Jammu, with a wide range of options to choose from.We understand that every couple has their unique taste and preference, and our team of experienced professionals will work with you to create the perfect wedding decoration that will reflect your personality and style.We offer a wide range of wedding decoration services, including mandap decoration, stage decoration, entrance decoration, table decoration, and more. Our team of skilled professionals will work tirelessly to ensure that every aspect of your wedding decoration is perfect."),
                SizedBox(height: 10,),
                Text("Mandap Decoration"),
                SizedBox(height: 5,),
                Text("The mandap is the most important part of the wedding ceremony, and we understand the importance of making it look beautiful. We offer a wide range of mandap decoration options to choose from, including traditional designs and modern styles. Our team will work with you to create a mandap that is unique and reflects your personal style."),
                SizedBox(height: 10,),
                Text("Stage Decoration"),
                SizedBox(height: 5,),
                Text("The stage is where the couple sits during the wedding ceremony, and it is essential to make it look stunning. We offer a variety of stage decoration options, including floral arrangements, lighting, and more. Our team will work with you to create a stage that complements your wedding theme and style."),
                SizedBox(height: 10,),
                Text("Entrance Decoration"),
                SizedBox(height: 5,),
                Text("The entrance is the first impression your guests will have of your wedding, and we understand the importance of making it look beautiful. We offer a range of entrance decoration options, including flower arches, LED lighting, and more. Our team will work with you to create an entrance that sets the tone for your wedding and leaves a lasting impression on your guests."),
                SizedBox(height: 10,),
                Text("Table Decoration"),
                SizedBox(height: 5,),
                Text("The table decorations are an essential part of the wedding reception, and we offer a variety of options to choose from. Our team will work with you to create table decorations that match your wedding theme and style. We offer a range of options, including flower arrangements, candles, and more."),
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