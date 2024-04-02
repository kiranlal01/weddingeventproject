import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:weddingeventproject/event/bttmnavigation.dart';

import '../firebasefunctions/firebasehelper.dart';
import 'home.dart';
import 'login.dart';


class ev_SignUp extends StatefulWidget {
  ev_SignUp({super.key});

  @override
  State<ev_SignUp> createState() => _ev_SignUpState();
}

class _ev_SignUpState extends State<ev_SignUp> {
  var email_controller=TextEditingController();

  var pass_controller=TextEditingController();
  //------------
  // final FirebaseAuthServieces _auth=FirebaseAuthServieces();
  // TextEditingController _usernamecontroller=TextEditingController();
  // TextEditingController _emailcontroller=TextEditingController();
  // TextEditingController _passwordcontroller=TextEditingController();
  GlobalKey<FormState>key = GlobalKey();
  bool showpass = true;
  String? email;
  String? password;
  String? name;

  @override
  void dispose() {
    super.dispose();
    email_controller.dispose();
    pass_controller.dispose();
  }

  // void signUpUser() async {
  //   print("SignUp");
  //   try {
  //     await context.read<Firebaseauth_method>().Signupemail(
  //       email: _emailcontroller.text,
  //       password: _passwordcontroller.text,
  //       name: _usernamecontroller.text,
  //       context: context,
  //     );
  //
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => bttm()));
  //     print("Successfully Signed Up!");
  //   } catch (e) {
  //     print("Error during sign up: $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[500],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text("SignUp", style: TextStyle(fontSize: 50, color: Colors.white),),
            SizedBox(height: 20,),
            Center(
              child: Container(

                height: 420, width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, right: 20),
                    //   child: TextFormField(
                    //     controller: _usernamecontroller,
                    //     onSaved: (ename){
                    //       name=ename;},
                    //     textInputAction: TextInputAction.next,
                    //     decoration: InputDecoration(
                    //         prefixIcon: Icon(Icons.account_circle),
                    //         hintText: 'name',
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20))
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: email_controller,
                        onSaved: (pwd){
                          password=pwd;
                        },
                        validator: (username) {
                          if (username!.isEmpty ||
                              !username.contains("@") ||
                              !username.contains(".")) {
                            return "enter valid mail";
                          }
                          else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            hintText: 'email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: pass_controller,
                        validator: (pass1) {
                          if (pass1!.isEmpty || pass1.length < 6) {
                            return "Password must should be greater than 6";
                          } else {
                            return null;
                          }
                        },
                        obscureText: showpass,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            hintText: 'password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, right: 20),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //         prefixIcon: Icon(Icons.lock),
                    //         suffixIcon: Icon(Icons.visibility),
                    //         hintText: 'confirm password',
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(20))
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 5,),
                    Center(
                        child: ElevatedButton(onPressed: () {
                          String email=email_controller.text.trim();
                          String pass=pass_controller.text.trim();

                          FireBaseHelper()
                              .registerUser(email: email,pass: pass)
                              .then((result) {
                            if (result == null) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ev_Login()));
                            }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                            }
                          });

                          // Navigator.push(context, MaterialPageRoute(builder: (
                          //     context) => ev_Login()));
                        }, child: Text("SignUp"))),

                    Center(
                        child: TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ev_Login()));
                        },
                            child: Text("Already created account? Login", style: TextStyle(color: Colors.green)))
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
}