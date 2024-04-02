import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weddingeventproject/event/bttmnavigation.dart';
import 'package:weddingeventproject/event/login.dart';
import 'package:weddingeventproject/firebasefunctions/snackbar.dart';


class FireBaseHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;

  //User Signup
  Future<String?> registerUser({required String email,required String pass}) async {
    try {
      await  auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      print(e);
    }

  }

  Future<String?> loginUser({required String email,required String pass}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pass
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return e.message;
    }
  }

  Future<void> logout() async{
    await auth.signOut();
  }
}

// class Firebaseauth_method {
//   final FirebaseAuth _auth;
//
//   Firebaseauth_method(this._auth,);
//
//
//   User get user => _auth.currentUser!; //
//
//   //State persistence
//   Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
//
//
//   //Email Signup
//   Future<void> Signupemail({
//     required String email,
//     required String password,
//     required String name,
//     required BuildContext
//     context, //use to display like a snack bar items & Firestore (provider)
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email,
//           password: password);
//
//       await _auth.currentUser!.updateProfile(displayName: name);
//
//       // await sendEmailVerification(context);
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!);
//     }
//   }
//
//
//   //Email login
//   Future<void> loginWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       if (_auth.currentUser!.emailVerified) {
//         // User is verified, navigate to the home page
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) =>
//                     bttm())); // Replace '/home' with your actual home page route
//       }
//       // else {
//       //   // User not verified, send an email verification
//       //   await sendEmailVerification(context);
//       // }
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!); // Displaying the error message
//     }
//   }
//
//
// // Sign out
// Future<void> signOut(BuildContext context) async {
//   try {
//     await _auth.signOut();
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => ev_Login()));
//   } on FirebaseAuthException catch (e) {
//     showSnackBar(context, e.message!); // Displaying the error message
//   }
// }
//
// // Delete account
// Future<void> deleteAccount(BuildContext context) async {
//   try {
//     await _auth.currentUser!.delete();
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => ev_Login()));
//   } on FirebaseAuthException catch (e) {
//     showSnackBar(context, e.message!);
//     // Displaying the error message
//     // if an error of requires-recent-login is thrown, make sure to log
//     // in user again and then delete account.
//   }
// }
// }


//--------------------------------------------
