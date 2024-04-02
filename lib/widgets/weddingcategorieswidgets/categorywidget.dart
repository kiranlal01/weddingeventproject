// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home: CircleVenue(),debugShowCheckedModeBanner: false,));
// }
//
// class CircleVenue extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 50,),
//           CategoryWidget(
//             backgroundColor: Colors.blueGrey,
//             img: Image(image: AssetImage("assets/images/venue.png"),fit: BoxFit.fill,),
//             title: "JAcks",
//             place: "Bangalore",
//             rating: "5.0",
//             seen: "(324)",
//             name: "Jacks",
//             rent: "For Rental",
//             pcount: "capacity 1500",
//             message: "message",
//             icon1: Icons.message,
//             icon2: Icons.call,
//             icon3: Icons.favorite,
//             icon4: Icons.star,)
//         ],
//       ),
//     );
//   }
//
// }
//
//
// //widget
// class CategoryWidget extends StatelessWidget{
//
//   final Image img;
//   final String title;
//   final String place;
//   final String rating;
//   final String seen;
//   final String name;
//   final String rent;
//   final String pcount;
//   final String message;
//   final IconData icon1;
//   final IconData icon2;
//   final IconData icon3;
//   final IconData icon4;
//   final Color? backgroundColor;
//
//   CategoryWidget({
//     Key ? key,
//     required this.img,
//     required this.title,
//     required this.place,
//     required this.rating,
//     required this.seen,
//     required this.name,
//     required this.rent,
//     required this.pcount,
//     required this.message,
//     required this.icon1,
//     this.backgroundColor,
//     required this.icon2,
//     required this.icon3,
//     required this.icon4,
//   }):super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                       color: backgroundColor,
//                     borderRadius: BorderRadius.circular(10)
//                   ),
//                   height: 200,width: 300,
//                   child: img,
//                 ),
//                 Positioned(
//                     top: 5,right: 5,
//                     child: Icon(icon3,color: Colors.white,size: 20,)),
//               ],
//             ),
//           ),
//           Row(mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(title,style: TextStyle(fontSize: 18),),
//
//               SizedBox(width: 200,),
//               Row(
//                 children: [
//                   Icon(icon4,color: Colors.red,size: 20,),
//                   Text(rating,style: TextStyle(fontSize: 18),),
//                 ],
//               ),
//               Text(seen,style: TextStyle(fontSize: 18),)
//
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40),
//             child: Text(place,style: TextStyle(fontSize: 18),),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40),
//             child: Text(name,style: TextStyle(fontSize: 18),),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 40),
//             child: Text(rent,style: TextStyle(fontSize: 18),),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 50,right: 50),
//             child: Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.green),
//                     borderRadius: BorderRadius.circular(30)
//                   ),
//                   height: 40,width: 300,
//                   child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(icon1),
//                       SizedBox(width: 5,),
//                       Center(child: Text(message,style: TextStyle(fontSize: 18),)),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 20,),
//                 Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.green),
//                         borderRadius: BorderRadius.circular(30)
//                     ),
//                     height: 40,width: 40,
//                     child: Icon(icon2,color: Colors.green,))
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }