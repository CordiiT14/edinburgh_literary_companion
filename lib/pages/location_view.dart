import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:provider/provider.dart';

// This class takes in a location object from pages such as browser.dart(discover) and saved.dart.
class LocationView extends StatelessWidget {
  final Location location;
  const LocationView({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar allows user to return to the screen they were on previously
      appBar: AppBar(
        title: Text(location.name), // The location name
      ),

      body: ListView(
        children: [
          Stack(alignment: AlignmentDirectional.topEnd, children: <Widget>[
            Image.asset(
              'assets/${location.image}', // image path
            ),
            IconButton(
              iconSize: 50,
              onPressed: () =>
                  context.read<Locations>().toggleSavedLocation(location),
              icon: Icon(
                //changing icon display based on saved status
                context.watch<Locations>().locationIsSaved(location)
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: context.watch<Locations>().locationIsSaved(location)
                    ? Colors.red
                    : Colors.white,
                semanticLabel:
                context.watch<Locations>().locationIsSaved(location)
                    ? 'Remove from saved'
                    : 'Save',
              ),
            ),
          ]),
          ListTile(
            title: Text(
              location.name,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),

          ListTile(
            title: Text(
              'An Edinburgh ${location.category.name}', // Is it a landmark? Attraction? Bookshop?
              style: const TextStyle(
                fontSize: 25,
                fontFamily: 'MavenPro-ExtraBold',
                color: Colors.purple,
              ),
            ),
          ),
          Divider(
            height: 30.0,
            color: Colors.lightBlue[800],
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          Center(
            // Load map when user taps on map pin image
            child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ViewMap()
                ),
              );
            },

              child: Image.asset(
                'assets/google-maps-pin.png', // image path
                height: 50, // define height of image
              ),
            ),
          ),
          ListTile(
            title: Text(
              location.address, // location address
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: Text(
              // location description
              location.description,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          // only display website address if it exists
          Column(
            children: [
              if (location.website.isNotEmpty) (
                  ListTile(
                    title: Text(
                      // location description
                      'Website:${location.website}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
