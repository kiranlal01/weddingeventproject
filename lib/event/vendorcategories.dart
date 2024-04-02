import 'package:flutter/material.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20bridalwear.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20decoration.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20food.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20groomwear.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20jewellery.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20makeup.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20mehndi.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20music.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20photographers.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20shooting.dart';
import 'package:weddingeventproject/vendorcategories/categories/wedding%20venues.dart';

void main(){
  runApp(MaterialApp(home: VendorCategories(),debugShowCheckedModeBanner: false,));
}

class VendorCategories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vendors"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Venue"),
            leading: Image(image: AssetImage("assets/images/venue.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingVenue()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Photographers"),
            leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingPhotographer()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Makeup"),
            leading: Image(image: AssetImage("assets/images/makeup.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingMakeup()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Pre Wedding Shoot"),
            leading: Image(image: AssetImage("assets/images/shoot.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingShoot()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Planning & Decor"),
            leading: Image(image: AssetImage("assets/images/decorators.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingDecoration()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Bridal Wear"),
            leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingBridalwear()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Groom Wear"),
            leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingGroomwear()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Mehndi"),
            leading: Image(image: AssetImage("assets/images/mehndi.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingMehndi()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Jewellery & Accessories"),
            leading: Image(image: AssetImage("assets/images/jewellery.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingJewellery()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Music & Dance"),
            leading: Image(image: AssetImage("assets/images/dance.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingMusic()));
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Food"),
            leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingFood()));
            },
          ),
        ],
      ),
    );
  }

}

// void main(){
//   runApp(MaterialApp(home: VendorCategories(),debugShowCheckedModeBanner: false,));
// }
//
// class VendorCategories extends StatelessWidget{
//   List<Category> categories = [
//     Category(name: "Venue", img: "assets/images/venue.png"),
//     Category(name: "Photographers", img: "assets/images/photographer.png"),
//     Category(name: "Makeup", img: "assets/images/makeup.png"),
//     Category(name: "Pre Wedding Shoot", img: "assets/images/shoot.png"),
//     Category(name: "Planning & Decor", img: "assets/images/decorators.png"),
//     Category(name: "Bridal Wear", img: "assets/images/bridalwear.png"),
//     Category(name: "Groom Wear", img: "assets/images/groomwear.png"),
//     Category(name: "Mehndi", img: "assets/images/mehndi.png"),
//     Category(name: "Jewellery & Accessories", img: "assets/images/jewellery.png"),
//     Category(name: "Music & Dance", img: "assets/images/dance.png"),
//     Category(name: "Food", img: "assets/images/food.png"),
//     // Category(name: "Makeup", img: "assets/images/makeup.png"),
//     // Add more categories as needed
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Vendor Categories"),
//         actions: [
//           Wrap(
//             children: [
//               Icon(Icons.search),
//               Icon(Icons.favorite)
//             ],
//           )
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(categories[index].name),
//             leading: Image.asset(
//               categories[index].img,
//               width: 50,
//               height: 50,
//             ),
//             onTap: () {
//               // Navigate to vendor list page for the selected category
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => WeddingVenues(category: categories[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
//
// }
//
// class Category {
//   final String name;
//   final String img;
//
//   Category({
//     required this.name,
//     required this.img,
//   });
// }
//----------------------------------------------------------
      // body: ListView.builder(itemBuilder: (context,index){
      //   return Padding(
      //     padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      //     child: Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         gradient: LinearGradient(
      //           begin: Alignment.topRight,
      //           end: Alignment.bottomLeft,
      //           colors: [
      //             Colors.blue,
      //             Colors.red,
      //           ],
      //         ),
      //         image: DecorationImage(
      //           alignment: Alignment.centerRight,
      //           image: AssetImage("${img[index]}"),
      //         ),
      //       ),
      //       height: 150,width: 400,
      //       child: Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 30),
      //             child: Text("${categories[index]}"),
      //           ),
      //         ],
      //       ),
      //     ),
      //   );
      // },itemCount: categories.length,),

//----------------------------------------------------------------------------
// class Vendors extends StatelessWidget{
//   final String txt;
//   final Image img;
//
//   Vendors({
//     Key ? key,
//     required this.txt,
//     required this.img
//   }): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [
//             Colors.blue,
//             Colors.red,
//           ],
//         ),
//         image: DecorationImage(
//           alignment: Alignment.centerRight,
//           image: AssetImage('assets/images/1venue.png'),
//         ),
//       ),
//       height: 150,width: 400,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 15),
//             child: Text(txt,style: TextStyle(fontSize: 18),),
//           ),
//           SizedBox(width: 15),
//           img
//         ],
//       ),
//     );
//   }
//
// }

//----------------------------------------------------------------------------

// class Vendors extends StatelessWidget{
//   final String txt;
//   final Image img;
//
//   Vendors({
//     Key ? key,
//     required this.txt,
//     required this.img
//   }): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [
//             Colors.blue,
//             Colors.red,
//           ],
//         ),
//         image: DecorationImage(
//           alignment: Alignment.centerRight,
//           image: AssetImage('assets/images/1venue.png'),
//         ),
//       ),
//       height: 150,width: 400,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 15),
//             child: Text(txt,style: TextStyle(fontSize: 18),),
//           ),
//           SizedBox(width: 15),
//           img
//         ],
//       ),
//     );
//   }
//
// }



