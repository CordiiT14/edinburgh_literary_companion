import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Locations with ChangeNotifier {

  final List<Location> _locations = LocationData().locations;
  final List<Location> _savedLocations = [];

  List<Location> get allLocations => _locations;
  List<Location> get savedLocations =>  _savedLocations;

  void toggleSavedLocation(Location location){
    locationIsSaved(location) ? _savedLocations.remove(location) : _savedLocations.add(location);
    notifyListeners();
  }

  bool locationIsSaved(Location location){
    return _savedLocations.contains(location);
  }

}