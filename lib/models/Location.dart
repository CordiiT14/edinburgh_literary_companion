import 'package:edin_lit_companion/models/Category.dart';

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
}
