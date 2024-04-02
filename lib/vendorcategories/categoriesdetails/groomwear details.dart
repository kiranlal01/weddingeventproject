import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GDress1(),debugShowCheckedModeBanner: false,));
}

class GDress1 extends StatelessWidget{
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
              image: AssetImage("assets/images/groomwear.png"),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 420,),
                Text("Dress1"),
                SizedBox(height: 10,),
                Text("Kalyan Sarees"),
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
                    Text("5000")
                  ],
                ),
                SizedBox(height: 10,),
                // Text("Description"),
                // SizedBox(height: 10,),
                Text("Product Details"),
                SizedBox(height: 5,),
                Text("Dive into the celestial beauty of this blue ombre saree. The stonework on the soft flowy satin fabric adds a shimmering detail. This party wear saree is ideal for your reception, engagement or cocktail events.It comes with matching a unstitched blouse piece, however, you can also pair it with your favourite silver, blue or black cropped top for a trendy look."),
                SizedBox(height: 10,),
                Text("Size & Fit"),
                SizedBox(height: 5,),
                Text("Saree: 5.5 Mtrs; Blouse: 0.80 Mtrs"),
                SizedBox(height: 10,),
                Text("Material & Care"),
                SizedBox(height: 5,),
                Text("Dry Wash Only"),
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