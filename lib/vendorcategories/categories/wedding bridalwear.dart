import 'package:flutter/material.dart';

import '../../widgets/weddingcategorieswidgets/categorywidget.dart';
import '../categoriesdetails/bridalwear details.dart';

void main(){
  runApp(MaterialApp(home: WeddingBridalwear(),debugShowCheckedModeBanner: false,));
}


class WeddingBridalwear extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bridal Wear"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Dress1"),
              leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BDress1()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress2"),
              leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress3"),
              leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress4"),
              leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress5"),
              leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Dress6"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Dress7"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress8"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress9"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress10"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress11"),
            //   leading: Image(image: AssetImage("assets/images/bridalwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
          ],
        ),
      ),
    );
  }

}

// void main(){
//   runApp(MaterialApp(home: WeddingBridalwear(),debugShowCheckedModeBanner: false,));
// }
//
// class WeddingBridalwear extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: const Text("Bridal Wear"),
//             actions: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 10),
//                 child: Icon(Icons.favorite),
//               )
//             ],
//             bottom: AppBar(
//               elevation: 0,
//               title: Container(
//                 height: 40,
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search Your Products",
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: bridalwearDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget bridalwearDetails() {
//     return Column(
//       children: [
//         SizedBox(height: 50,),
//         CategoryWidget(
//             backgroundColor: Colors.blueGrey,
//             img: Image(image: AssetImage("assets/images/3venue.png"),fit: BoxFit.fill,),
//             title: "Commercial Street",
//             place: "Bangalore",
//             rating: "4.1",
//             seen: "21",
//             name: "good wedding",
//             rent: "\$10,000 - 50,000",
//             pcount: "gd",
//             message: "message",
//           icon1: Icons.message,
//           icon2: Icons.call,
//           icon3: Icons.favorite,
//           icon4: Icons.star,)
//       ],
//     );
//   }
//
// }