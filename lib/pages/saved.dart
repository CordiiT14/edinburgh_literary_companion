import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Location> savedLocations =
        context.watch<Locations>().savedLocations;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: savedLocations.isEmpty
          ? const Center(
              child: Text(
                'No saved locations',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          : ListView(
              //for each location in savedLocations list, render a LocationCard widget
              children: savedLocations
                  .map((location) => LocationCard(location: location))
                  .toList(),
            ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 3,
      ),
    );
  }
}
