import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

import 'calender/calender1.dart';

void main(){
  runApp(MaterialApp(home: ev_Details(),debugShowCheckedModeBanner: false,));
}

class ev_Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wedding Details"),),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Name"
              ),
            ),
          ),
          SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You're"),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red)
                ),
                height: 50,width: 150,
                child: Row(
                  children: [
                    Icon(Icons.girl),
                    SizedBox(width: 3,),
                    Text("Bride")
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                ),
                height: 50,width: 150,
                child: Row(
                  children: [
                    Icon(Icons.boy),
                    SizedBox(width: 3,),
                    Text("Groom")
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 10,),
                Text("Wedding City"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Choose City"
              ),
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(Icons.calendar_month),
                SizedBox(width: 10,),
                Text("Wedding Date"),
              ],
            ),
          ),
          SizedBox(height: 10,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                ),
                height: 50,width: 150,
                child: Text("Decided"),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                ),
                height: 50,width: 150,
                child: Text("Not Decided"),
              )
            ],
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calender1()));
              },
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Choose Date"
                ),
              ),
            ),
          ),

          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.only(left: 380),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Start")),
          )
        ],
      ),
    );
  }

}