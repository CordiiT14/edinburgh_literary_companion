import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/book_data.dart';
import 'package:edin_lit_companion/models/Book.dart';

class Books with ChangeNotifier {
  final List<Book> _books = BookData().books;
  List<Book> _searchBooks = BookData().books;
  // final List<Book> _savedBooks = [];

  List<Book> get allBooks => _books;
  List<Book> get searchBooks => _searchBooks;
  // List<Book> get savedBooks => _savedBooks;

}
