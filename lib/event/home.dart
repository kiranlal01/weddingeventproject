import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weddingeventproject/event/login.dart';

import 'package:weddingeventproject/widgets/homewid/addresscard.dart';
import 'package:weddingeventproject/widgets/homewid/circleimage.dart';
import 'package:weddingeventproject/widgets/homewid/venuecontainer.dart';
import 'package:weddingeventproject/widgets/homewid/viewall.dart';

import '../firebasefunctions/firebasehelper.dart';
import '../theme/provider.dart';
import '../vendorcategories/categories/wedding decoration.dart';
import '../vendorcategories/categories/wedding makeup.dart';
import '../vendorcategories/categories/wedding photographers.dart';
import '../vendorcategories/categories/wedding venues.dart';
import 'vendorcategories.dart';



void main(){
  runApp(MaterialApp(home: ev_Home(),debugShowCheckedModeBanner: false,));
}

// void main(){
//   runApp(DevicePreview(
//       isToolbarVisible: true,
//       builder: (BuildContext context)=>MaterialApp(
//         useInheritedMediaQuery: true,
//         debugShowCheckedModeBanner: false,
//         home: ev_Home(),
//       )
//   ));
// }

class ev_Home extends StatefulWidget{
  @override
  State<ev_Home> createState() => _ev_HomeState();
}

class _ev_HomeState extends State<ev_Home> {





  @override
  Widget build(BuildContext context) {
    // final user=context.read<Firebaseauth_method>().user;
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Events"),
        actions: [
          Icon(Icons.search)
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              accountName: Text("Kiran",style: TextStyle(color: Colors.black),), accountEmail: Text("kiran@123",style: TextStyle(color: Colors.black),),

              // accountName: Text("${user.displayName}",style: TextStyle(color: Colors.black),), accountEmail: Text("${user.email!}",style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),),
              // otherAccountsPictures: [
              //   CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),)
              // ],
            ),
            // ListTile(
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ev_Home()));
            //   },
            //   leading: Icon(Icons.home),
            //   title: Text("Home",style: TextStyle(color: Colors.black),),
            // ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile",style: TextStyle(color: Colors.black),),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Theme',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  onPressed: () {

                    Provider.of<Themeprovider>(context,listen: false).toogletheme();




                  },
                  icon: Icon(
                    Icons.dark_mode,
                    size: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // context.read<Firebaseauth_method>().deleteAccount(context);
              },
              leading: Icon(Icons.delete),
              title: Text("Delete",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              onTap: () {
                // FireBaseHelper()
                //     .logout()
                //     .then((result) {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => ev_Login()));
                // });
                FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ev_Login()));
              },
              leading: Icon(Icons.logout),
              title: Text("Logout",style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),

      body: Container(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 10,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/venue.png")),
                      txt: "Wedding \n Venue",
                      onpress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingVenue()));
                      },),
                    SizedBox(width: 20,),
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/photographer.png")),
                      txt: "Wedding \n Photographers",
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingPhotographer()));
                      },),
                    SizedBox(width: 20,),
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/decorators.png")),
                      txt: "Wedding \n Decorations",
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingDecoration()));
                      },),
                    SizedBox(width: 20,),
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/makeup.png")),
                      txt: "Bridal \n Makeup",
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingMakeup()));
                      },),
                    SizedBox(width: 20,),
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/planner.png")),
                      txt: "Wedding \n Planner",
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingDecoration()));
                      },),
                    SizedBox(width: 20,),
                    CircleImage(
                      img: Image(image: AssetImage("assets/images/venue.png")),
                      txt: "All \n Categories",
                      onpress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorCategories()));
                      },),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ListTile(leading: Text("Venues in your city",style: TextStyle(color: Colors.black,fontSize: 20),)),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/1venue.png"),fit: BoxFit.fill,),
                      title: "Venue 1",
                      icon: Icons.star,
                      subtitle: 'Bangalore',
                      rate: '5.0',
                      price: '\$ 100',),
                    SizedBox(width: 20,),
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/2venue.png"),fit: BoxFit.fill,),
                      title: "Venue 2",
                      icon: Icons.star,
                      subtitle: 'Mysore',
                      rate: '4.0',
                      price: '\$ 95',),
                    SizedBox(width: 20,),
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/3venue.png"),fit: BoxFit.fill,),
                      title: "Venue 3",
                      icon: Icons.star,
                      subtitle: 'Kochi',
                      rate: '4.5',
                      price: '\$ 115',),
                    SizedBox(width: 20,),
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/4venue.png"),fit: BoxFit.fill,),
                      title: "Venue 4",
                      icon: Icons.star,
                      subtitle: 'Delhi',
                      rate: '3.5',
                      price: '\$ 88',),
                    SizedBox(width: 20,),
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/5venue.png"),fit: BoxFit.fill,),
                      title: "Venue 5",
                      icon: Icons.star,
                      subtitle: 'Chennai',
                      rate: '3.0',
                      price: '\$ 120',),
                    SizedBox(width: 20,),
                    VenueContainer(
                      img: Image(image: AssetImage("assets/images/6venue.png"),fit: BoxFit.fill,),
                      title: "Venue 6",
                      icon: Icons.star,
                      subtitle: 'Goa',
                      rate: '5.0',
                      price: '\$ 122',),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              ViewAll(
                txt: 'View All Venues',
                onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WeddingVenue()));
                },
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: AddressCard(
                    img: Image(image: AssetImage("assets/images/venue.png"),height: 200,width: 200,),
                    addrss: '''
    Taj Auditorium
    ST Thomas Church
    Bangalore
    Karnataka'''),
              ),
              SizedBox(height: 10,),
              ListTile(leading: Text("Photographers in your city",style: TextStyle(color: Colors.black,fontSize: 20),)),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer1.png")),
                        title: 'photographer 1',
                        icon: Icons.star,
                        subtitle: 'Bangalore',
                        rate: '4.9',
                        price: '\$ 1,50,000'),
                    SizedBox(width: 20,),
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer2.png")),
                        title: 'photographer 2',
                        icon: Icons.star,
                        subtitle: 'Mysore',
                        rate: '4.7',
                        price: '\$ 1,10,000'),
                    SizedBox(width: 20,),
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer3.png")),
                        title: 'photographer 3',
                        icon: Icons.star,
                        subtitle: 'Kochi',
                        rate: '4.2',
                        price: '\$ 95,000'),
                    SizedBox(width: 20,),
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer4.png")),
                        title: 'photographer 4',
                        icon: Icons.star,
                        subtitle: 'Bangalore',
                        rate: '4.5',
                        price: '\$ 99,000'),
                    SizedBox(width: 20,),
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer5.png")),
                        title: 'photographer 5',
                        icon: Icons.star,
                        subtitle: 'Goa',
                        rate: '4.9',
                        price: '\$ 1,80,000'),
                    SizedBox(width: 20,),
                    VenueContainer(
                        img: Image(image: AssetImage("assets/images/photographer6.png")),
                        title: 'photographer 6',
                        icon: Icons.star,
                        subtitle: 'Delhi',
                        rate: '4.8',
                        price: '\$ 1,65,000'),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ViewAll(
                txt: 'View All Photographers',
                onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WeddingPhotographer()));
                },),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),

    );
  }
}

