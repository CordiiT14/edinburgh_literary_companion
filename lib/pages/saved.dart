import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:edin_lit_companion/components/location_card.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  List<Location> savedLocations = [
    Location(
        name: 'Lady Stair Close',
        category: Category.Landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'lady stair close',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    Location(
        name: 'Elephant Cafe',
        category: Category.Landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'lady stair close',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    Location(
        name: 'National Library of Scotland',
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: ListView(
        //for each location in savedLocations list, render a LocationCard widget
        //LocationCard takes two parameters, location and delete
        children: savedLocations
            .map((location) => LocationCard(
                  location: location,
                  delete: () {
                    setState(() => savedLocations.remove(location));
                  },
                ))
            .toList(),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
