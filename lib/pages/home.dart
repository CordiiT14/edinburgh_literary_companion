import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Location> locations = [
    Location(
        name: 'Lady Stair Close',
        category: Category.Landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'lady stair close',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/')
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(
        child: Text(
          'homepage!',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
