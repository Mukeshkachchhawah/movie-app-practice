import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../main_pages/add.dart';
import '../main_pages/home.dart';
import '../main_pages/download.dart';
import '../main_pages/profile.dart';
import '../main_pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int index = 0;
  final _pages = [Home(), Search(), Add(), Download(), Profile()];

  @override
  Widget build(BuildContext context) {
    // bottom navigtor bar icons button
    final items = <Widget>[
      Icon(Icons.home, size: 30, color: Colors.white,),
      Icon(Icons.search, size: 30,color: Colors.white,),
      Icon(Icons.add_circle_outline_sharp, size: 30,color: Colors.white,),
      Icon(Icons.download, size: 30,color: Colors.white,),
      Icon(Icons.perm_identity, size: 30,color: Colors.white,),
    ];
    return Scaffold(
      
      bottomNavigationBar: CurvedNavigationBar(
        //  key: _bottomNavigationKey,
        index: index,
        height: 60.0,
        items: items,
        color: Color.fromARGB(255, 13, 11, 102),
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        // letIndexChange: (index) => true,
      ),
      body: _pages[index],
    );
  }
}
