import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';

class LocationView extends StatelessWidget {
  final Location location;
  const LocationView({ required this.location});

  @override
  Widget build(BuildContext context) {

    // final locationData = LocationData(); // Get all locations from LocationData file
    // final location = locationData.locations[0]; // Grab the first location for testing

      return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),

        body: ListView(
          children: [
            Image.asset(
                'assets/monuments/${location.image}'
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
                'An Edinburgh ${location.category.name}',
                style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'MavenPro-ExtraBold',
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              title: Text(
                location.address,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Co-ordinates: Latitude = ${location
                    .latitude} | Longitude = ${location.longitude}',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              title: Text(
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
