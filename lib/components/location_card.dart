import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';

class LocationCard extends StatelessWidget {
  final Location location;
  final Function delete;

  LocationCard({required this.location, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0),
      child: ListTile(
        onTap: () {
          //  re-route to the location page
        },
        title: Text(
          location.name,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blueGrey[200],
          ),
        ),
        subtitle: Text(
          //this is to extract 'landmark' from 'Category.landmark'
          location.category.name,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.blueGrey[150],
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            //this is useful for accessibility mode
            semanticLabel: 'remove from saved',
          ),
          //this comes up if you long tap on the icon
          tooltip: 'remove from saved',
          onPressed: () {
            delete();
          },
        ),
      ),
    );
  }
}
