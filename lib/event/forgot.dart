import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weddingeventproject/event/signup.dart';

class ev_Forgot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[500],
      body: Column(
        children: [
          SizedBox(height: 150),
          // Text("Login",style: TextStyle(fontSize: 50,color: Colors.white),),
          // SizedBox(height: 20,),
          Center(
            child: Container(
              height: 350,width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Forgot passwaord?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Please enter your emai id and we will send you a code in email"),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          hintText: 'email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                      child: ElevatedButton(onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ev_Reset)));
                      }, child: Text("Reset"))),

                  // Center(
                  //     child: TextButton(onPressed: () {
                  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ev_SignUp()));
                  //     }, child: Text("Don't have an account? SignUp",style: TextStyle(color: Colors.green)))
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}