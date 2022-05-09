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
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Text(
          text
        ),
      ),
    );
  }
}