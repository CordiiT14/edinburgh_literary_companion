// import 'package:flutter/material.dart';
// import 'package:edin_lit_companion/components/navigationBar.dart';
// import 'package:edin_lit_companion/data/location_data.dart';
// import 'package:edin_lit_companion/components/location_card.dart';
//
// class Saved extends StatefulWidget {
//
//   Saved({Key? key}) : super(key: key);
//
//   @override
//   State<Saved> createState() => _SavedState();
// }
//
// class _SavedState extends State<Saved> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Saved'),
//         centerTitle: true,
//         backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
//       ),
//       body: ListView(
//         //for each location in savedLocations list, render a LocationCard widget
//         //LocationCard takes two parameters, location and delete
//         children: widget.savedLocations
//             .map((location) => LocationCard(
//                   location: location,
//                   delete: () {
//                     //add remove function to set state
//                     setState(() => widget.savedLocations.remove(location));
//                   },
//                 ))
//             .toList(),
//       ),
//       bottomNavigationBar: Navigation(),
//     );
//   }
// }
