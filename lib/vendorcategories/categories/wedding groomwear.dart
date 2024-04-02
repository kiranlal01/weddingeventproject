import 'package:flutter/material.dart';

import '../../widgets/weddingcategorieswidgets/categorywidget.dart';
import '../categoriesdetails/groomwear details.dart';

void main(){
  runApp(MaterialApp(home: WeddingGroomwear(),debugShowCheckedModeBanner: false,));
}


class WeddingGroomwear extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Groom Wear"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Dress1"),
              leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GDress1()));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress2"),
              leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress3"),
              leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress4"),
              leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Dress5"),
              leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Dress6"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Dress7"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress8"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress9"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress10"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Dress11"),
            //   leading: Image(image: AssetImage("assets/images/groomwear.png"),width: 100,height: 100,),
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




// class WeddingGroomwear extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: const Text("Groom Wear"),
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
//             child: groomwearDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget groomwearDetails() {
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