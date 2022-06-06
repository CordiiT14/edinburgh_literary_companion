import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/pages/location_view.dart';

class LocationCard extends StatelessWidget {
  final Location location;

  const LocationCard({required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LocationView(location: location)
            ),
          );
        },
        title: Text(
          location.name,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          //this is to extract 'landmark' from 'Category.landmark'
          location.category.name,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            //this is useful for accessibility mode
            semanticLabel: 'remove from saved',
          ),
          //this comes up if you long tap on the icon
          tooltip: 'remove from saved',
          onPressed: () {
            context.read<Locations>().toggleSavedLocation(location);
          },
        ),
      ),
    );
  }
}
