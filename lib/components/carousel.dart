import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Category.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Carousel extends StatelessWidget {
  const Carousel(this.locationList);

  final List locationList;


  @override
  Widget build(BuildContext context) {

    //Test Data

    // List<Location> locations = [
    //   Location(
    //       name: 'Lady Stair Close',
    //       category: Category.landmark,
    //       address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
    //       description: "Site of Baxter's Close",
    //       image: 'landmarks/burnsMonument.jpg',
    //       latitude: 55.94959278,
    //       longitude: -3.19338131,
    //       website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    //   Location(
    //       name: 'Lady Stair Close',
    //       category: Category.landmark,
    //       address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
    //       description: "Site of Baxter's Close",
    //       image: 'landmarks/burnsMonument.jpg',
    //       latitude: 55.94959278,
    //       longitude: -3.19338131,
    //       website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    //   Location(
    //       name: 'Lady Stair Close',
    //       category: Category.landmark,
    //       address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
    //       description: "Site of Baxter's Close",
    //       image: 'landmarks/burnsMonument.jpg',
    //       latitude: 55.94959278,
    //       longitude: -3.19338131,
    //       website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    // ];

    return CarouselSlider(
      options: CarouselOptions( //mandatory attribute
        height: 100.0,
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3), //autoplay turned off for now
      ),

      //items is also mandatory needs to be given a list to the .map returning the builder ends in .toList()
      items: locationList.map((location) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // Stack widget allows you to positions items on top of each other like text over image
                    child: Stack(
                      fit: StackFit.expand, // stack as wide as full column
                      children: [
                        Image.asset('assets/${location.image}',
                        fit: BoxFit.cover, //image covers expands to stack
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              width: 150,
                              color: Color.fromRGBO(87, 88, 187, 0.85),
                                padding: const EdgeInsets.all(10),
                              child: Text(
                                '${location.name}',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),
                    ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
