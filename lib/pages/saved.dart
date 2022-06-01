import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/data/location_data.dart';
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
        title: Text('Saved'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: ListView(
        //for each location in savedLocations list, render a LocationCard widget
        //LocationCard takes two parameters, location and delete
        children: savedLocations
            .map((location) => LocationCard(location: location))
            .toList(),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
