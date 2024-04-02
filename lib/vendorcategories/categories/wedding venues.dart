import 'package:flutter/material.dart';


import '../../event/vendorcategories.dart';

void main(){
  runApp(MaterialApp(home: WeddingVenue(),debugShowCheckedModeBanner: false,));
}

class WeddingVenue extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Venues"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Venue1"),
              leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Venue2"),
              leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Venue3"),
              leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Venue4"),
              leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text("Venue5"),
              leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
              subtitle: Text("Bangalore"),
              trailing: Text("\$400"),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              },
            ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Venue6"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text(" Venue7"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Venue8"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Venue9"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Venue10"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
            //   subtitle: Text("Bangalore"),
            //   trailing: Text("\$400"),
            //   onTap: () {
            //     // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
            //   },
            // ),
            // SizedBox(height: 10,),
            // ListTile(
            //   title: Text("Venue11"),
            //   leading: Image(image: AssetImage("assets/images/1venue.png"),width: 100,height: 100,),
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

// class WeddingVenues extends StatelessWidget{
//
//   final Category category;
//
//   WeddingVenues({required this.category});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             title: Text(category.name),
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
//                       hintText: "Search Your Products",
//                       prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: venuesDetails(),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget venuesDetails() {
//     return Column(
//       children: [
//         SizedBox(height: 50,),
//         Text('Vendor list for ${category.name}'),
//     ]
//     );
//   }
//
// }

//appbar with back title savecart
//search bar

//container with img slide3 premium+savecart
//venuetitle,place rating+how many
//name
//rental
//people capacity
//message+call