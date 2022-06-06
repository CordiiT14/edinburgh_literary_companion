
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Navigation extends StatefulWidget {
  final int selectedIndex;
  const Navigation({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<Navigation> createState() => _Navigation();
}


class _Navigation extends State<Navigation> {

  // changes the current active/selected item in navbar
  void _onItemTapped(int index){
    if (index == 0){
      Navigator.of(context).pushReplacementNamed(_pages[index]);
    } else {
      Navigator.of(context).pushNamed(_pages[index]);
    }
  }

  //list of page widgets, same order as navigation for shared indices
  final List<String> _pages = <String>[
    '/home',
    '/browse',
    '/map',
    '/books',
    '/saved',
  ];

  //TODO change navbar to be constant 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 1),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
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
              Icons.menu_book_rounded,
              color: Color.fromRGBO(241, 135, 1, 1),
            ),
            label: 'Books',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Color.fromRGBO(241, 135, 1, 1),
              ),
            label: 'Saved',
          ),
        ],
        currentIndex: widget.selectedIndex,
        onTap: (index) {
          _onItemTapped(index);
        }
    );
    }

  }

