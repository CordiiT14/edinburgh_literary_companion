import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/pages/location_view.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';

// CARD WIDGET FOR LOCATIONS list on Discover (browse.dart) screen using data list mapped from browse.dart

class LocationListCard extends StatefulWidget {
  const LocationListCard({Key? key, required this.location}) : super(key: key);

  final Location location;

  @override
  State<LocationListCard> createState() => _LocationListCardState();
}

class _LocationListCardState extends State<LocationListCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LocationView(location: widget.location)
              ),
        );
      },
      // Location image
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/${widget.location.image}'),
        radius: 20.0,
      ),
      // Location name
      title: Text(widget.location.name,
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
        onPressed: () => context.read<Locations>().toggleSavedLocation(widget.location),
        label: const Text(''),
        icon: Icon(
          //changing icon display based on saved status
          context.watch<Locations>().locationIsSaved(widget.location)
              ? Icons.favorite
              : Icons.favorite_border_outlined,
          color: context.watch<Locations>().locationIsSaved(widget.location) ? Colors.red : Colors.grey[500],
          semanticLabel: context.watch<Locations>().locationIsSaved(widget.location) ? 'Remove from saved' : 'Save',
        ),
      ),

      // If we want slightly larger cards, could do ThreeLine
      // isThreeLine: true,
    );
    // );
  }
}
