import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/home.dart';
import 'package:edin_lit_companion/pages/loading.dart';
import 'package:edin_lit_companion/pages/location_view.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:edin_lit_companion/pages/saved.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

void main() {
  final locationData = LocationData();
  final locations = locationData.locations;
  List<Location> savedLocations = [];
  //filtering locations with the saved boolean
  for (var location in locations) {
    if (location.saved) {
      savedLocations.add(location);
    }
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      // TODO create loading widget
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/browse': (context) => Browse(),
      // '/location' : (context) => LocationView(),
      '/map': (context) => ViewMap(),
      '/saved': (context) => Saved(
            savedLocations: locations,
            remove: () {
              setState((location) => locations.remove(location));
            },
          )
    },
  ));
}
