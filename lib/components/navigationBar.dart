import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/pages/home.dart';
import 'package:edin_lit_companion/pages/saved.dart';
import 'package:edin_lit_companion/pages/view_map.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _Navigation();
}


class _Navigation extends State<Navigation> {
  //keeping track of selected item: bottomNavigationBar items is  a list of bottomNavigationBarItems
  int _selectedIndex = 0;

  // changes the current active/selected item in navbar
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  //list of page widgets, same order as navigation for shared indices
  List<Widget> _pages = <Widget>[
    Home(),
    Browse(),
    ViewMap(),
    Saved(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
        selectedLabelStyle: TextStyle(
          decoration: TextDecoration.underline,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(241, 135, 1, 1),
              ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Color.fromRGBO(241, 135, 1, 1),
              ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
              color: Color.fromRGBO(241, 135, 1, 1),
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Color.fromRGBO(241, 135, 1, 1),
              ),
            label: 'Saved',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      );

  }

}

