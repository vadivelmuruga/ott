import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ott/staggeredott.dart';

import 'crud.dart';
import 'downloadsott.dart';
import 'listviewott.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _index = 0;
final pages=[
  splash(),
  gridview(),
  down(),
  crud(),
];
void press(index)
{
setState(() {
_index = index;
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: AnimatedBottomNavigationBar(
      backgroundColor: Colors.black,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        icons: [
            Icons.home,Icons.search,Icons.download,Icons.settings,
          ],
          activeIndex: _index,
          gapLocation: GapLocation.none,
          onTap: press,
      ),
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label:"Home",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label:"Search",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(icon: Icon(Icons.download,color: Colors.black,),label:"Downloads",backgroundColor: Colors.white),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label:"Settings",backgroundColor: Colors.white),
      //   ],
      //   currentIndex: _index,
      //   onTap: press,
      // ),
    );
  }
}
