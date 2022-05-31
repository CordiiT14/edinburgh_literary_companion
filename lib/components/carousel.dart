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
    //       image: 'monuments/burnsMonument.jpg',
    //       latitude: 55.94959278,
    //       longitude: -3.19338131,
    //       website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    //   Location(
    //       name: 'Lady Stair Close',
    //       category: Category.landmark,
    //       address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
    //       description: "Site of Baxter's Close",
    //       image: 'monuments/burnsMonument.jpg',
    //       latitude: 55.94959278,
    //       longitude: -3.19338131,
    //       website: 'https://hiddenscotland.co/listings/lady-stairs-close/'),
    //   Location(
    //       name: 'Lady Stair Close',
    //       category: Category.landmark,
    //       address: 'Lawnmarket, Edinburgh EH1 2PA Scotland',
    //       description: "Site of Baxter's Close",
    //       image: 'monuments/burnsMonument.jpg',
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
        autoPlayInterval: Duration(seconds: 3),
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
    );
  }
}
