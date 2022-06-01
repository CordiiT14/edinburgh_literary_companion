import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';

// This class takes in a location object from pages such as browser.dart(discover) and saved.dart.
class LocationView extends StatelessWidget {
  final Location location;
  const LocationView({ required this.location});

  @override
  Widget build(BuildContext context) {

    // Test data for grabbing the first location item (Delete if no longer required)
    // final locationData = LocationData(); // Get all locations from LocationData file
    // final location = locationData.locations[0]; // Grab the first location for testing

      return Scaffold(
        // appBar allows user to return to the screen they were on previously
        appBar: AppBar(
          title: Text(location.name), // The location name
        ),

        body: ListView(
          children: [
            Image.asset(
                'assets/${location.image}' // image path
            ),
            ListTile(
              title: Text(
                location.name,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.lightBlue[800],
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text(
                'An Edinburgh ${location.category.name}', // Is it a landmark? Attraction? Bookshop?
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'MavenPro-ExtraBold',
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              title: Text(
                location.address, // location address
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                // co-ordinates
                'Co-ordinates: Latitude = ${location
                    .latitude} | Longitude = ${location.longitude}',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              title: Text(
                // location description
                location.description,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        // ),
      );
  }
}
