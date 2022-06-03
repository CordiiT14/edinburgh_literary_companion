import 'package:edin_lit_companion/models/Book.dart';

class BookData {

  static BookData get shared => BookData();

  List<Book> get books => [
      Book(
          title: "Started Early, Took My Dog",
          author: "Kate Atkinson",
          description: "Book by Kate Atkinson",
          image: "/books/startedEarly.jpg",
          relatedLocations: ["Central Library"]
          ),
  ];
}