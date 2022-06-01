import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:edin_lit_companion/components/location_card.dart';

class Saved extends StatefulWidget {

  List<Location> locations;

  Saved({Key? key, required this.locations}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {

  @override
  Widget build(BuildContext context) {
    // List<Location> savedLocations = widget.locations.retainWhere((location) => location.saved);
    List<Location> savedLocations = [];
    //filtering locations with the saved boolean
    for (var location in widget.locations) {
      print(location.saved);
      if(location.saved){
        savedLocations.add(location);
      }
    }
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
