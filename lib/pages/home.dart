import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/carousel.dart';
import 'package:edin_lit_companion/data/location_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final locationData = LocationData();
    final allLocations = locationData.locations;

    // TODO once full location data available create three lists for carousels
    List <Location> topAttractions = [];



    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding( // around whole page context
          padding: const EdgeInsets.all(12.0),
          child: Column( //column wraps all content
            children: [
              Row( // Row 1: Discover Literary Edinburgh Header
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        'Discover Literary \n   Edinburgh!',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                    ),
                  ),
                ],
              ),
              Padding( // Current placeholder wrapper for the search bar
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Search bar will go here'),
                  ],
                ),
              ),

              // TOP ATTRACTIONS SECTION
              Row( // Containing Attractions section heading and see more button
                children: [
                  Text(
                    'Top Attractions',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    //TODO WRITE SEE MORE FILTER FUNCTIONS
                      onPressed: (){},
                      child: Text(
                        'see more',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 135, 1, 1),
                          fontSize: 12,
                        ),
                      ),
                  ),
                ],
              ),

              // ATTRACTION CAROUSEL
              Carousel(allLocations),

              // TOP LANDMARKS SECTION
              Row( // Containing Landmarks section heading and see more button
                children: [
                  Text(
                    'Top Landmarks',
                  style: TextStyle(
                  fontSize: 18,
                  ),
                  ),
                  TextButton(
                    //TODO WRITE SEE MORE FILTER FUNCTIONS
                    onPressed: (){},
                    child: Text(
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
              Row( // Containing Bookshops section heading and see more button
                children: [
                  Text(
                    'Top Bookshops',
                  style: TextStyle(
                  fontSize: 18,
                  ),
                  ),
                  TextButton(
                    //TODO WRITE SEE MORE FILTER FUNCTIONS
                    onPressed: (){},
                    child: Text(
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
      bottomNavigationBar: Navigation(),
    );
  }
}
