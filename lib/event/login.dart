import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weddingeventproject/event/bttmnavigation.dart';
import 'package:weddingeventproject/event/forgot.dart';
import 'package:weddingeventproject/event/home.dart';
import 'package:weddingeventproject/event/signup.dart';

import '../firebasefunctions/firebasehelper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey:"AIzaSyB66WT8BvDXcOCsF9uvSPEroe7FaY8BDEY",
          appId:"1:921855605931:android:33334f236af3fbb0d14bee",
          messagingSenderId:"",
          projectId:"weddingeventproject-ea6af"
      )
  );
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(
    home: user == null ? ev_Login() : ev_Home(),
  ));
}

class ev_Login extends StatefulWidget{

  @override
  State<ev_Login> createState() => _ev_LoginState();
}

class _ev_LoginState extends State<ev_Login> {
  var email_controller=TextEditingController();

  var pass_controller=TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  bool showpass = true;



  @override
  void dispose() {
    pass_controller.dispose();
    email_controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[500],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text("Login",style: TextStyle(fontSize: 50,color: Colors.white),),
            SizedBox(height: 20,),
            Center(
              child: Container(
        
                height: 350,width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextFormField(
                        controller: email_controller,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          hintText: 'email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                        ),
                        validator: (text) {
                          if (text!.isEmpty ||
                              !text.contains('@') ||
                              !text.contains(".")) {
                            return "Enter valid Email!!!";
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextFormField(
                        controller: pass_controller,
                        obscureText: showpass,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            hintText: 'password',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    // Center(child: TextButton(onPressed: () {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=> ev_Forgot()));
                    // }, child: Text("Forgot password?",style: TextStyle(color: Colors.green),))),
                    Center(
                        child: ElevatedButton(onPressed: () {
                          String email = email_controller.text.trim();
                          String pass = pass_controller.text.trim();

                          FireBaseHelper()
                              .loginUser(email:email,pass:pass)
                              .then((result){
                            if (result == null) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => bttm()));
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result),backgroundColor: Colors.blue,));
                            }
                          });
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> ev_Home()));
                        }, child: Text("Login",style: TextStyle(color: Colors.black),))),
        
                    Center(
                        child: TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ev_SignUp()));
                        }, child: Text("Don't have an account? SignUp",style: TextStyle(color: Colors.green)))
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void Loginuser() {
  //   Firebaseauth_method(FirebaseAuth.instance).loginWithEmail(
  //       email: email_controller.text,
  //       password: pass_controller.text,
  //       context: context);
  // }
}