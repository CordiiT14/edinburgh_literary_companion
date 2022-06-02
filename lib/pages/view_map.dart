import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class ViewMap extends StatefulWidget {
  const ViewMap({Key? key}) : super(key: key);

  @override
  State<ViewMap> createState() => _ViewMapState();
}

class _ViewMapState extends State<ViewMap> {

  // late GoogleMapController mapController;
  //  mapController = controller;
  // final LatLng _center = const LatLng(55.94936682425343, -3.1999283672172485);

  final Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {

    //creating the pin locations
    final List<Location> locations = LocationData().locations;

    setState(() {
    _markers.clear();
    for (var location in locations){
    final marker = Marker(
    markerId: MarkerId(location.name),
    position: LatLng(location.latitude, location.longitude),
    infoWindow: InfoWindow(
    title: location.name,
    snippet: location.address,
      onTap: (){},
    ),
    );
    _markers[location.name] = marker;
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(55.94936682425343, -3.1999283672172485),
          zoom: 11.0,
        ),
          markers: _markers.values.toSet()
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
