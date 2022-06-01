import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/pages/location_view.dart';

// Card widget for locations list on Discover (browse.dart) screen using data list mapped from browse.dart

class LocationListCard extends StatelessWidget {
  // const LocationListCard({Key? key}) : super(key: key); NOT NEEDED AS YET

  const LocationListCard({required this.location});
  final Location location;

  @override
  Widget build(BuildContext context) {
      return ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => LocationView(location: location)
              // TODO: Use the line below
              // builder: (context) => LocationView(location: location,)
              ),
          );
        },
        // Location image
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/${location.image}'),
          radius: 20.0,
        ),
        // Location name
        title: Text(location.name,
            style: const TextStyle(
              fontSize: 18.0,
            )),

        // Address or shortened description
        // subtitle: Text(location.address,
        //     style: const TextStyle(
        //       fontSize: 12.0,
        //     )),

        // Saved icon
        trailing: TextButton.icon(
          onPressed: () {},
          label: const Text(''),
          icon: Icon(
              Icons.favorite_border_outlined,
            color: Colors.grey[500],
          ),
        ),

        // If we want slightly larger cards, could do ThreeLine
        // isThreeLine: true,

      );
    // );
  }
}
