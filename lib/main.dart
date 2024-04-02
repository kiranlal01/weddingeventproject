import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:weddingeventproject/event/bttmnavigation.dart';
import 'package:weddingeventproject/event/login.dart';
import 'package:weddingeventproject/theme/provider.dart';

import 'event/splash.dart';
import 'firebasefunctions/firebasehelper.dart';

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: FirebaseOptions(
//           apiKey: "AIzaSyB66WT8BvDXcOCsF9uvSPEroe7FaY8BDEY",
//           appId:  "1:921855605931:android:33334f236af3fbb0d14bee",
//           messagingSenderId: '',
//           projectId: "weddingeventproject-ea6af",
//           storageBucket: 'weddingeventproject-ea6af.appspot.com'
//       )
//   );
//   runApp(
//       MultiProvider(providers:[
//         ChangeNotifierProvider(
//             create: (context) => Themeprovider()),
//         Provider<Firebaseauth_method>(create: (_)=>Firebaseauth_method( FirebaseAuth.instance)),
//         StreamProvider(create: (context)=> context.read<Firebaseauth_method>().authState, initialData: null),
//
//
//
//       ],
//         child: MyApp(),
//       ));
//
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: Provider.of<Themeprovider>(context).themedata,
        home:Splash()
    );
  }
}
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final Firebaseuser= context.watch<User?>();

    if (Firebaseuser != null){
      return bttm();
    }
    return ev_Login();
  }
}