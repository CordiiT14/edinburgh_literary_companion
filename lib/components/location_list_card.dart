import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';

class LocationListCard extends StatelessWidget {
  // const LocationListCard({Key? key}) : super(key: key);

  const LocationListCard({ required this.location});
  final Location location;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(location.name,
            style: const TextStyle(
              fontSize: 18.0,
            )),
            Text(location.address,
            style: const TextStyle(
              fontSize: 12.0,
            )),
          ],
        )
      )
    );
  }
}
