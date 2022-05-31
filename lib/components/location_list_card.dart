import 'package:flutter/material.dart';

class LocationListCard extends StatelessWidget {
  // const LocationListCard({Key? key}) : super(key: key);

  final String location;

  LocationListCard({ required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(location,
            style: const TextStyle(
              fontSize: 18.0,
            )),
            Text(location,
            style: const TextStyle(
              fontSize: 12.0,
            )),
          ],
        )
      )
    );
  }
}
