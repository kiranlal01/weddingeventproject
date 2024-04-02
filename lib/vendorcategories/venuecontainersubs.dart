import 'package:flutter/material.dart';
class VenueSubs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.arrow_back_ios),
            floating: true,
            pinned: true,
            title: const Text("Venues"),
            actions: [
              Wrap(
                children: [
                  Icon(Icons.share),
                  Icon(Icons.favorite)
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message)),
          BottomNavigationBarItem(icon: Icon(Icons.call))
        ],
        
      ),
    );
  }

}