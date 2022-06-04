import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Locations with ChangeNotifier {
  final List<Location> _locations = LocationData().locations;
  final List<Location> _savedLocations = [];
  final Map<int, bool> _filters = {0: true, 1: true, 2: true};
  List<Location> _searchLocations = LocationData().locations;

  List<Location> get allLocations => _locations;
  List<Location> get savedLocations => _savedLocations;
  List<Location> get searchLocations => _searchLocations;
  Map<int, bool> get filters => _filters;

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

  void updateFilters(){
    _searchLocations = _searchLocations.where((location) => _filters[location.category.index] == true).toList();
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
    updateFilters();
  }
}
