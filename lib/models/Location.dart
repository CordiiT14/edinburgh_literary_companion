import 'package:edin_lit_companion/models/Category.dart';
import 'package:edin_lit_companion/data/location_data.dart';

class Location {
  String name;
  Category category;
  String address;
  String description;
  String image;
  double latitude;
  double longitude;
  String website;

  Location({
      required this.name,
      required this.category,
      required this.address,
      required this.description,
      required this.image,
      required this.latitude,
      required this.longitude,
      required this.website
  });

  List<Location> locations = LocationData() as List<Location>;

}
