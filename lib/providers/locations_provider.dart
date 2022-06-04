import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

class Locations with ChangeNotifier {
  final List<Location> _locations = LocationData().locations;
  final List<Location> _savedLocations = [];

  //this will track the filters - the keys correspond to the index of each attribute in the category enum
  final Map<int, bool> _filters = {0: true, 1: true, 2: true};

  List<Location> _searchLocations = LocationData().locations;
  List<Location> _filteredLocations = LocationData().locations;

  List<Location> get allLocations => _locations;
  List<Location> get savedLocations => _savedLocations;
  Map<int, bool> get filters => _filters;

  List<Location> displayLocations(){
    //returning all locations that are common to both _filteredlocations and _searchlocations
    final List<Location> output = [];
    for(var filteredLocation in _filteredLocations){
      for(var searchLocation in _searchLocations){
        if(filteredLocation.name == searchLocation.name){
          output.add(filteredLocation);
        }
      }
    }
    String getName (Location location) => location.name;
    output.sort((a, b) => getName(a).compareTo(getName(b)));
    return output;
    //the following line would be more efficient, but isn't working, presumably due to difficulty of recognising equivalent objects
    //return _filteredLocations.where((location) => _searchLocations.contains(location)).toList();
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

  //called when the user taps a filter checkbox
  void toggleFilter(int index){
    _filters[index] = _filters[index] == true ? false : true;
    updateFilters();
  }

  //called when the user taps "see all" on the homepage
  void setFilters(int index){
    //setting all filters to false
    final List<int> keys = [0, 1, 2];
    for(var key in keys){
      _filters[key] = false;
    }
    //then setting the desired filter to true
    _filters[index] = true;
    //resetting _searchLocations in case it still holds a previous query
    _searchLocations = _locations;
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
