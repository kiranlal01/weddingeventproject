import 'package:flutter/material.dart';
//
// import '../../widgets/weddingcategorieswidgets/categorywidget.dart';

void main(){
  runApp(MaterialApp(home: WeddingPhotographer(),debugShowCheckedModeBanner: false,));
}

class WeddingPhotographer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photographer"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Photographer1"),
              leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Photographer2"),
              leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Photographer3"),
              leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Photographer4"),
              leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Photographer5"),
              leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer6"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer7"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer8"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer9"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer10"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Photographer11"),
            //   leading: Image(image: AssetImage("assets/images/photographer.png"),width: 100,height: 100,),
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


// class WeddingPhotographer extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: const Text("Photographers"),
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
//             child: photographersDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget photographersDetails() {
//     return Column(
//       children: [
//         SizedBox(height: 50,),
//         CategoryWidget(
//             backgroundColor: Colors.blueGrey,
//             img: Image(image: AssetImage("assets/images/3venue.png"),fit: BoxFit.fill,),
//             title: "Jacks",
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