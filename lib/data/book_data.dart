import 'package:edin_lit_companion/models/Book.dart';

class BookData {
  static BookData get shared => BookData();

  List<Book> get books => [
        Book(
          title: "Started Early, Took My Dog",
          author: "Kate Atkinson",
          description:
              "Description goes here, blah blah blah. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim justo eget nulla tincidunt, vel maximus dolor ultrices. Phasellus quis mattis nunc, in pulvinar metus. Aenean quis convallis tortor. Curabitur dapibus, ligula vitae sodales cursus, orci sem egestas ex, a tempor quam ante feugiat urna.",
          image: "books/startedEarly.jpg",
        ),
        Book(
          title: "When Will There Be Good News?",
          author: "Kate Atkinson",
          description:
              "Description goes here, blah blah blah. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim justo eget nulla tincidunt, vel maximus dolor ultrices. Phasellus quis mattis nunc, in pulvinar metus. Aenean quis convallis tortor. Curabitur dapibus, ligula vitae sodales cursus, orci sem egestas ex, a tempor quam ante feugiat urna.",
          image: "books/startedEarly.jpg",
        ),
        // Book(
        //     title: "",
        //     author: "",
        //     description: "Description goes here, blah blah blah. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim justo eget nulla tincidunt, vel maximus dolor ultrices. Phasellus quis mattis nunc, in pulvinar metus. Aenean quis convallis tortor. Curabitur dapibus, ligula vitae sodales cursus, orci sem egestas ex, a tempor quam ante feugiat urna.",
        //     image: "books/",
        // ),
      ];
}
