import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  List<Location> savedLocations = [
    Location(
        name: 'Lady Stair Close',
        category: Category.landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'lady stair close',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    Location(
        name: 'Lady Stair Close',
        category: Category.landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'lady stair close',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/')
  ];

  Widget LocationTemplate(location) {
    return Card(
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              location.name,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueGrey[200],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '${location.category}',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.blueGrey[150],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: savedLocations.map((location) => LocationTemplate(location)).toList(),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
