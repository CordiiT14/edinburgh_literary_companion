import 'package:edin_lit_companion/models/Location.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/carousel.dart';
import 'package:edin_lit_companion/data/location_data.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final allLocations = LocationData().locations;

    // TODO once full location data available create three lists for carousels
    List<Location> topAttractions = [];

    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          // around whole page context
          padding: const EdgeInsets.all(12.0),
          child: Column(
            //column wraps all content
            children: [
              Row(
                // Row 1: Discover Literary Edinburgh Header
                children: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Discover Literary \n   Edinburgh!',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                // Current placeholder wrapper for the search bar
                padding: const EdgeInsets.all(8.0),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     Text('Search bar will go here'),
                //   ],
                // ),
                child: Container(
                  child: TextField(
                    onChanged: (value) {
                      context.read<Locations>().runSearch(value);
                    //  navigate to browse page with parameter of
                    //  context.read<Locations>().searchLocations;
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                    ),
                  ),
                ),
              ),

              // TOP ATTRACTIONS SECTION
              Expanded(
                child: Row(
                  // Containing Attractions section heading and see more button
                  children: [
                    const Text(
                      'Top Attractions',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      //TODO WRITE SEE MORE FILTER FUNCTIONS
                      onPressed: () {},
                      child: const Text(
                        'see more',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 135, 1, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ATTRACTION CAROUSEL
              Carousel(allLocations),

              // TOP LANDMARKS SECTION
              Row(
                // Containing Landmarks section heading and see more button
                children: [
                  const Text(
                    'Top Landmarks',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    //TODO WRITE SEE MORE FILTER FUNCTIONS
                    onPressed: () {},
                    child: const Text(
                      'see more',
                      style: TextStyle(
                        color: Color.fromRGBO(241, 135, 1, 1),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),

              //LANDMARKS CAROUSEL
              Carousel(allLocations),

              // TOP BOOKSHOPS SECTION
              Row(
                // Containing Bookshops section heading and see more button
                children: [
                  const Text(
                    'Top Bookshops',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    //TODO WRITE SEE MORE FILTER FUNCTIONS
                    onPressed: () {},
                    child: const Text(
                      'see more',
                      style: TextStyle(
                        color: Color.fromRGBO(241, 135, 1, 1),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),

              //BOOKSHOP CAROUSEL
              Carousel(allLocations),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 0,
      ),
    );
  }
}
