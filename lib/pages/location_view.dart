import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/data/location_data.dart';

class LocationView extends StatefulWidget {
  // const LocationView({Key? key}) : super(key: key);

  // Need to Review: Current setup works with static object
  final Location location;
  LocationView(this.location);

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) {

    final locationData = LocationData(); // Get all locations from LocationData file
    final firstLocation = locationData.locations[0]; // Grab the first location for testing

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(
              'assets/monuments/burnsMonument.jpg'
              ),
            ListTile(
            title: Text(
              firstLocation.name,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            ),
            Divider(
              height:30.0,
              color: Colors.lightBlue[800],
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text(
                'An Edinburgh ${firstLocation.category.name}',
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'MavenPro-ExtraBold',
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              title: Text(
                firstLocation.address,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Co-ordinates: Latitude = ${firstLocation.latitude} | Longitude = ${firstLocation.longitude}',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              title: Text(
                firstLocation.description,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
              ],
          ),
          ),
    );
  }
}
