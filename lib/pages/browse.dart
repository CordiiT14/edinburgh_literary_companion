import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);



  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {

  // List<String> testStrings = [
  //   'Test location name 1', 'Test location name 2', 'Test location name 3'
  // ];

  @override
  Widget build(BuildContext context) {
    final locationData = LocationData();
    final locations = locationData.locations;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: locations
              .map((location) => LocationListCard(location: location)).toList(),
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
