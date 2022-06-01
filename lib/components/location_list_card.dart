import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/pages/location_view.dart';

// Card widget for locations list on Discover (browse.dart) screen using data list mapped from browse.dart

class LocationListCard extends StatefulWidget {
  // const LocationListCard({Key? key}) : super(key: key); NOT NEEDED AS YET

  const LocationListCard({required this.location});
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
              // TODO: Use the line below
              // builder: (context) => LocationView(location: location,)
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
          onPressed: () {
            setState((){
              widget.location.saved = !widget.location.saved;
            });
            },
          label: const Text(''),
          icon: Icon(
              widget.location.saved ? Icons.favorite : Icons.favorite_border_outlined,
            color: widget.location.saved ? Colors.red : Colors.grey[500],
            semanticLabel: widget.location.saved ? 'Remove from saved' : 'Save',
          ),
        ),

        // If we want slightly larger cards, could do ThreeLine
        // isThreeLine: true,

      );
    // );
  }
}
