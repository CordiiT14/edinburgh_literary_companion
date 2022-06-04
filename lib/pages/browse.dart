import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';

// Browse widget for Discover screen taking in data from location_data.dart via LocationData()
// Browse widget then maps data and passes to LocationListCard widget as a list

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    List<Location> searchResults = context.watch<Locations>().displayLocations();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: TextField(
                  onChanged: (value) {
                    context.read<Locations>().runSearch(value);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      // TODO Fix colour here
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            // TODO And fix colour here
                            ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  ),
                ),
              ),
            ),

            // Search filters will go here
            Row(
              children: [
                Checkbox(
                  value: context.watch<Locations>().filters[0],
                  onChanged: (unnecessaryParameter) =>
                      context.read<Locations>().toggleFilter(0),
                  // title: const Text('Attractions'),
                ),
                const Text('Attractions'),
                Checkbox(
                  value: context.watch<Locations>().filters[1],
                  onChanged: (unnecessaryParameter) =>
                      context.read<Locations>().toggleFilter(1),
                  // title: const Text('Landmarks'),
                ),
                const Text('Landmarks'),
                Checkbox(
                  value: context.watch<Locations>().filters[2],
                  onChanged: (unnecessaryParameter) =>
                      context.read<Locations>().toggleFilter(2),
                  // title: const Text('Bookshops'),
                ),
                const Text('Bookshops'),
              ],
            ),
            Expanded(
              // List of location cards, passed to LocationListCard widget
              child: searchResults.isNotEmpty
                  ? ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) => Card(
                            // key: ValueKey(searchResults[index]),
                            child: LocationListCard(
                                location: searchResults[index]),
                          )

                      // OLD CODE FROM ORIGINAL MAPPING TO LocationListCard
                      // children: searchResults
                      // children:
                      // (searchResults.isNotEmpty ? searchResults : locations)
                      //     .map((location) => LocationListCard(location: location))
                      //     .toList(),

                      )
                  : const Text(
                      'No results found',
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 1,
      ),
    );
  }
}
