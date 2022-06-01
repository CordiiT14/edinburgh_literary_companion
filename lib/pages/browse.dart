import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:edin_lit_companion/models/Location.dart';

// Browse widget for Discover screen taking in data from location_data.dart via LocationData()
// Browse widget then maps data and passes to LocationListCard widget as a list

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  final locationData = LocationData();

  List<Location> searchResults = [];

  @override
  initState() {
    final locations = locationData.locations;
    searchResults = locations;
    super.initState();
  }

  void runSearch(String query) {
    List<Location> results = [];
    if (query.isEmpty) {
      results = searchResults;
    } else {
      results = searchResults
          .where((location) =>
              location.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      searchResults = results;
    });

    // void filterSearchResults(String query) {
    //   // List<Location> dummySearchList = [];
    //   // dummySearchList.addAll(searchResults);
    //   if (query.isNotEmpty) {
    //     // print(query);
    //     List<Location> dummySearchList = [];
    //     searchResults.forEach((location) {
    //       if (location.name.contains(query)) {
    //         dummySearchList.add(location);
    //       }
    //     });
    //     // for (Location location in dummySearchList) {
    //     //   print(location.name);
    //     // }
    //     setState(() {
    //       searchResults.clear();
    //       print(searchResults);
    //       searchResults.addAll(dummySearchList);
    //       print(searchResults);
    //     });
    //     return;
    //   } else {
    //     setState(() {
    //       searchResults.clear();
    //       searchResults.addAll(locations);
    //     });
    //   }
  }

  @override
  Widget build(BuildContext context) {
    // Grabbing LocationData() from location_data.dart

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Search bar and filters will go here

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: TextField(
                  onChanged: (value) {
                    runSearch(value);
                  },
                  // controller: editingController, // Not sure about this!
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      // TODO Fix colour here
                      // color: Color.fromARGB(241, 135, 1, 1),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            // TODO And fix colour here
                            // color: Colors.black,
                            ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  ),
                ),
              ),
            ),

            const Text('Search bar goes here'),
            const Text('Filter checkboxes go here'),
            Expanded(
              // List of location cards, mapped to LocationListCard widget
              // child: ListView(
              //  BUILDER
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) => Card(
                  child: LocationListCard(location: searchResults[index]),
                ),

                // children: searchResults
                // children:
                // (searchResults.isNotEmpty ? searchResults : locations)
                //     .map((location) => LocationListCard(location: location))
                //     .toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
