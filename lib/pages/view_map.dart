import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/pages/location_view.dart';

import 'info.dart';

class ViewMap extends StatefulWidget {
  const ViewMap({Key? key}) : super(key: key);

  @override
  State<ViewMap> createState() => _ViewMapState();
}

class _ViewMapState extends State<ViewMap> {
  double initialLatitude = 55.94959278;
  double initialLongitude = -3.19338131;
  final Map<String, Marker> _markers = {};

  // late GoogleMapController mapController;
  //  mapController = controller;
  // final LatLng _center = const LatLng(55.94936682425343, -3.1999283672172485);

  void _onMapCreated(GoogleMapController controller) {
    //creating the pin locations
    List<Location> locations = LocationData().locations;
    // final List<Location> locations = context.watch<Locations>().allLocations;

    setState(() {
      _markers.clear();
      for (var location in locations) {
        // Determine colour of icon based on location type
        BitmapDescriptor iconColour() {
          if (location.category.index == 0) {
            // Is location an attraction?
            return BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue);
          }
          if (location.category.index == 1) {
            // Is location a landmark?
            return BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueViolet);
          }
          return BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueRose); // Is location a bookshop?
        } // end of iconColour

        final marker = Marker(
          markerId: MarkerId(location.name),
          position: LatLng(location.latitude, location.longitude),
          icon: iconColour(),
          infoWindow: InfoWindow(
            title: location.name,
            snippet: location.address, // Breakdown of snippet is above
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LocationView(location: location)),
              );
            },
          ),
        );
        _markers[location.name] = marker;
      } // end for loop
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Map'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
        actions:[
          IconButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Info()
              ),
            );
            },
              icon: const Icon(Icons.info)
          )
        ]
      ),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(initialLatitude, initialLongitude),
            zoom: 11.0,
          ),
          markers: _markers.values.toSet()
      ),
      bottomNavigationBar: const Navigation(selectedIndex: 2,),
    );
  }
}

// Tabbed map setup
//   @override
//   Widget build(BuildContext context) {
//     int tabIndex=0 ;
//         // DefaultTabController.of(context)?.index;
//     return DefaultTabController(
//       length: 5,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Location Map'),
//           centerTitle: true,
//           backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
//           bottom: const TabBar(
//             indicatorColor: Color.fromRGBO(241, 135, 1, 1),
//             tabs: [
//               Tab(icon: Icon(Icons.tab)),
//               Tab(icon: Icon(Icons.attractions)),
//               Tab(icon: Icon(Icons.location_city)),
//               Tab(icon: Icon(Icons.library_books)),
//               Tab(icon: Icon(Icons.favorite)),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             GoogleMap(
//                 onMapCreated: _onMapCreated,
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(initialLatitude, initialLongitude),
//                   zoom: 11.0,
//                 ),
//                 markers: _markers.values.toSet()
//             ),
//             Text('${DefaultTabController.of(context)?.index}'),
//             Text('$tabIndex'),
//             Text('$tabIndex'),
//             Text('$tabIndex'),
//           ],
//         ),
//         bottomNavigationBar: const Navigation(
//           selectedIndex: 2,
//         ),
//       ),
//     );
//   }
// }

