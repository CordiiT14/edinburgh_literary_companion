import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:edin_lit_companion/data/location_data.dart';

// Browse widget for Discover screen taking in data from location_data.dart via LocationData()
// Browse widget then maps data and passes to LocationListCard widget as a list

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {

  @override
  Widget build(BuildContext context) {
    // Grabbing LocationData() from location_data.dart
    final locationData = LocationData();
    final locations = locationData.locations;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Search bar and filters will go here
            const Text('Search bar goes here'),
            const Text('Filter checkboxes go here'),
            Expanded(
              // List of location cards, mapped to LocationListCard widget
              child: ListView(
                children: locations
                    .map((location) => LocationListCard(location: location)).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
