import 'package:edin_lit_companion/models/Location.dart';

class Book {
  String title;
  String author;
  String description;
  String image;
  List<String> relatedLocations;

  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.image,
    required this.relatedLocations
});
}