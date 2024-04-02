import 'package:flutter/material.dart';

import '../../widgets/weddingcategorieswidgets/categorywidget.dart';
import '../categoriesdetails/makeup details.dart';

void main(){
  runApp(MaterialApp(home: WeddingMakeup(),debugShowCheckedModeBanner: false,));
}

class WeddingMakeup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Makeup"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Makeup1"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Makeup1()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Makeup2"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Makeup3"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Makeup4"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Makeup5"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup6"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup7"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup8"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup9"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup10"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Makeup11"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
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


// class WeddingMakeup extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: const Text("Makeup"),
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
//             child: makeupDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget makeupDetails() {
//     return Column(
//       children: [
//         SizedBox(height: 50,),
//         CategoryWidget(
//             backgroundColor: Colors.blueGrey,
//             img: Image(image: AssetImage("assets/images/3venue.png"),fit: BoxFit.fill,),
//             title: "JAcks",
//             place: "Bangalore",
//             rating: "5.0",
//             seen: "324",
//             name: "Jacks",
//             rent: "For Rental",
//             pcount: "capacity 1500",
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