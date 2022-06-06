import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// class IndividualGoogleMap extends StatefulWidget {
//   final Location location;
//   const IndividualGoogleMap({Key? key, required this.location}) : super(key: key);
//
//   @override
//   State<IndividualGoogleMap> createState() => _IndividualGoogleMapState();
// }
//
// class _IndividualGoogleMapState extends State<IndividualGoogleMap> {
//   late GoogleMapController mapController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width:500,
//       child: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//         ),
//       ),
//     );
//   }
// }

// This class takes in a location object from pages such as browser.dart(discover) and saved.dart.
class LocationView extends StatelessWidget {
  final Location location;
  const LocationView({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar allows user to return to the screen they were on previously
      appBar: AppBar(
        title: Text(location.name), // The location name
      ),

      body: ListView(
        children: [
          // IndividualGoogleMap(location: location),
          Stack(alignment: AlignmentDirectional.topEnd, children: <Widget>[
            Image.asset(
              'assets/${location.image}', // image path
            ),
            IconButton(
              iconSize: 40,
              onPressed: () =>
                  context.read<Locations>().toggleSavedLocation(location),
              icon: Icon(
                //changing icon display based on saved status
                context.watch<Locations>().locationIsSaved(location)
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: context.watch<Locations>().locationIsSaved(location)
                    ? Colors.red
                    : Colors.white,
                semanticLabel:
                context.watch<Locations>().locationIsSaved(location)
                    ? 'Remove from saved'
                    : 'Save',
              ),
            ),
          ]),
          ListTile(
            title: Text(
              location.name,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'An Edinburgh ${location.category.name}', // Is it a landmark? Attraction? Bookshop?
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'MavenPro-ExtraBold',
                color: Color.fromRGBO(87, 88, 187, 9.0),
              ),
            ),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewMap(latitude: location.latitude, longitude: location.longitude, zoom: 19.0)
                  ),
                );
              },
              child: Image.asset(
                'assets/google-maps-pin.png', // image path
                height: 45, // define height of image
              ),
            ),
            title: Text(
              location.address, // location address
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const Divider(
            height: 25.0,
            // color: Colors.lightBlue[800],
            color: Color.fromRGBO(87, 88, 187, 9.0),
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          ListTile(
            title: Text(
              // location description
              location.description,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          // only display website address if it exists
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Column(
              children: [
                if (location.website.isNotEmpty) (
                    ListTile(
                      title: Text(
                        // location description
                        'Website:${location.website}',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
