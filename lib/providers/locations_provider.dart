import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Locations with ChangeNotifier {
  final List<Location> _locations = LocationData().locations;
  final List<Location> _savedLocations = [];
  final Map<int, bool> _filters = {0: true, 1: true, 2: true};
  List<Location> _searchLocations = LocationData().locations;
  List<Location> _filteredLocations = LocationData().locations;

  List<Location> get allLocations => _locations;
  List<Location> get savedLocations => _savedLocations;
  Map<int, bool> get filters => _filters;

  List<Location> displayLocations(){
    //why isn't this line working? it could replace the double for loop
    //presumably an issue with recognising different versions of objects as equivalent
    //return _filteredLocations.where((location) => _searchLocations.contains(location)).toList();
    final List<Location> output = [];
    for(var filteredLocation in _filteredLocations){
      for(var searchLocation in _searchLocations){
        if(filteredLocation.name == searchLocation.name){
          output.add(filteredLocation);
        }
      }
    }
    return output;
  }

  void toggleSavedLocation(Location location) {
    locationIsSaved(location)
        ? _savedLocations.remove(location)
        : _savedLocations.add(location);
    notifyListeners();
  }

  bool locationIsSaved(Location location) {
    return _savedLocations.contains(location);
  }

  void toggleFilter(int index){
    _filters[index] = _filters[index] == true ? false : true;
    //should there be another notifylisteners here?
    updateFilters();
  }

  void setFilters(int index){
    final List<int> keys = [0, 1, 2];
    for(var key in keys){
      _filters[key] = false;
    }
    _filters[index] = true;
    updateFilters();
  }

  void updateFilters(){
    _filteredLocations = _locations.where((location) => _filters[location.category.index] == true).toList();
    notifyListeners();
  }

  void runSearch(String query) {
    if (query.isEmpty) {
      _searchLocations = _locations;
    } else {
      // change the list .where was filtering through to _locations from _searchResults
      _searchLocations = _locations
          .where((location) =>
              location.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
