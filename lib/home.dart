// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String appBarTitle = 'Flutter AppBar';
  String text = 'Home clicked';
  GlobalKey<ScaffoldState> drawerKey = GlobalKey()
;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                text: 'Car Repair',
                icon: Icon(Icons.car_repair),
              ),
              Tab(
                text: 'Home Repair',
                icon: Icon(Icons.home_repair_service),
              ),
              Tab(
                text: 'Room Service',
                icon: Icon(Icons.room_service),
              ),
            ],
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          title: Text(
            appBarTitle,
          ),
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: () => setState(() => text = 'Casting clicked!'), 
              icon: Icon(Icons.cast),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () => setState(() => text = 'Notifications clicked!'), 
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () => setState(() => text = 'Search clicked!'), 
              icon: Icon(Icons.search),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () => setState(() => drawerKey.currentState?.openEndDrawer()), 
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ],
        ),
        endDrawer: Drawer(),
        body: TabBarView(
          children: [
            Center(child: Text('Car Repair - $text',),),
            Center(child: Text('Home Repair - $text',),),
            Center(child: Text('Room Service - $text',),),
          ],
        )
      ),
    );
  }
}