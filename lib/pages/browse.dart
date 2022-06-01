import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';

// Browse widget for Discover screen taking in data from location_data.dart via LocationData()
// Browse widget then maps data and passes to LocationListCard widget as a list

class Browse extends StatelessWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = context.watch<Locations>().allLocations;
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