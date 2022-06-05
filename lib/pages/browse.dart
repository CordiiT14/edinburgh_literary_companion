import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/location_list_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';

// BROWSE WIDGET FOR DISCOVER PAGE - taking in data from location_data.dart via LocationData()
class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    List<Location> searchResults =
        context.watch<Locations>().displayLocations();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(87, 88, 187, 9.0),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),

            // SEARCH BAR input text field
            child: Container(
              child: TextField(
                onChanged: (value) =>
                    context.read<Locations>().runSearch(value),
                decoration: const InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(241, 135, 1, 1),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              ),
            ),
          ),

          // SEARCH RESULTS FILTERS
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

          // LOCATIONS LIST / SEARCH RESULTS
          Expanded(
            // List of location cards, passed to LocationListCard widget
            child: searchResults.isNotEmpty
                ? ListView.builder(
                    itemCount: searchResults.length,
                    itemBuilder: (context, index) => Card(
                          // key: ValueKey(searchResults[index]),
                          child:
                              LocationListCard(location: searchResults[index]),
                        ))
                : const Center(
                    child: Text(
                      'No results found',
                    ),
                  ),
          ),
        ],
      ),

      // NAVIGATION BAR
      bottomNavigationBar: const Navigation(
        selectedIndex: 1,
      ),
    );
  }
}
