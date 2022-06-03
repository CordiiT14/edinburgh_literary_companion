import 'package:edin_lit_companion/pages/location_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Carousel extends StatelessWidget {
  const Carousel(this.locationList);

  final List locationList;


  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      options: CarouselOptions( //mandatory attribute
        height: 100.0,
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3), //autoplay turned off for now
      ),

      //items is also mandatory needs to be given a list to the .map returning the builder ends in .toList()
      items: locationList.map((location) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // Stack widget allows you to positions items on top of each other like text over image
                    child: Stack(
                      fit: StackFit.expand, // stack as wide as full column
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationView(location: location)
                              ),
                            );
                          },
                           child: Image.asset('assets/${location.image}',
                          fit: BoxFit.cover, //image covers expands to stack
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              width: 150,
                              color: const Color.fromRGBO(87, 88, 187, 0.85),
                                padding: const EdgeInsets.all(10),
                              child: Text(
                                '${location.name}',
                                textAlign: TextAlign.end,
                                style: const TextStyle(
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
