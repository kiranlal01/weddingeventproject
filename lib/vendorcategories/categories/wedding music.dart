import 'package:flutter/material.dart';
//
// import '../../widgets/weddingcategorieswidgets/categorywidget.dart';

void main(){
  runApp(MaterialApp(home: WeddingMusic(),debugShowCheckedModeBanner: false,));
}

class WeddingMusic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Music"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Music1"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Music2"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Music3"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Music4"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Music5"),
              leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music6"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music7"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music8"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music9"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music10"),
            //   leading: Image(image: AssetImage("assets/images/food.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Music11"),
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


// class WeddingMusic extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: const Text("Musics & Dance"),
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
//             child: musicDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget musicDetails() {
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