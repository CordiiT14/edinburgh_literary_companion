import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Location> locations = [
    Location(
        name: 'Lady Stair Close',
        category: Category.landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'monuments/burnsMonument.jpg',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    Location(
        name: 'Lady Stair Close',
        category: Category.landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'monuments/burnsMonument.jpg',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    Location(
        name: 'Lady Stair Close',
        category: Category.landmark,
        address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
        description: "Site of Baxter's Close",
        image: 'monuments/burnsMonument.jpg',
        latitude: 55.94959278,
        longitude: -3.19338131,
        website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Search bar will go here'),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Top Attractions',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
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
              CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  aspectRatio: 2.0,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                items: locations.map((location) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Image.asset('assets/${location.image}',
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                children: [
                  Text(
                    'Landmarks',
                  style: TextStyle(
                  fontSize: 18,
                  ),
                  ),
                  TextButton(
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
              Row(
                children: [
                  Text(
                    'Bookshops',
                  style: TextStyle(
                  fontSize: 18,
                  ),
                  ),
                  TextButton(
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
