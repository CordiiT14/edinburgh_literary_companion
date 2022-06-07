import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// This class takes in a location object from pages such as browser.dart(discover) and saved.dart.
class LocationView extends StatelessWidget {
  final Location location;
  const LocationView({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(location.website);

    void _launchUrl() async {
      if (!await launchUrl(_url)) throw 'Could not launch website';
    }

    return Scaffold(
      // appBar allows user to return to the screen they were on previously
      appBar: AppBar(
        title: Text(location.name), // The location name
      ),

      body: ListView(
        children: [
          // IndividualGoogleMap(location: location),
          Stack(alignment: AlignmentDirectional.topEnd, children: <Widget>[
            Image.asset(
              'assets/${location.image}', // image path
            ),
            IconButton(
              iconSize: 40,
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
            subtitle: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
              child: Text(
                '${location.category.name}', // Is it a landmark? Attraction? Bookshop?
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'MavenPro-ExtraBold',
                  // color: Color.fromRGBO(87, 88, 187, 9.0),
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // ListTile(
          //   title:
          // ),
          ListTile(
            horizontalTitleGap: 5.0,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewMap(
                        latitude: location.latitude,
                        longitude: location.longitude,
                        zoom: 19.0)),
              );
            },
            leading: Image.asset(
              'assets/google-maps-pin.png', // image path
              height: 45, // define height of image
            ),
            title: Text(
              location.address, // location address
              style: const TextStyle(
                fontSize: 18,
                // color: Color.fromRGBO(87, 88, 187, 9.0),
                // color: Color.fromRGBO(241, 135, 1, 1),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          // const Divider(
          //   height: 25.0,
          //   color: Color.fromRGBO(87, 88, 187, 9.0),
          //   thickness: 0.75,
          //   indent: 35,
          //   endIndent: 35,
          // ),
          const SizedBox(height: 5.0),
          ListTile(
            title: Text(
              // location description
              location.description,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          // only display website address if it exists
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Column(
              children: [
                if (location.website.isNotEmpty)
                  (ListTile(
                    onTap: () {
                      launchUrlString(location.website);
                    },
                    title: RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(
                                Icons.public,
                                color: Color.fromRGBO(87, 88, 187, 9.0),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Visit website',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(87, 88, 187, 9.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
