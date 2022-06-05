import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/book_data.dart';
import 'package:edin_lit_companion/models/Book.dart';

// BOOKS PROVIDER - search functionality with option to uncomment code that will provide functionality for a books tbr list

class Books with ChangeNotifier {
  final List<Book> _books = BookData().books;
  List<Book> _searchBooks = BookData().books;
  final List<Book> _savedBooks = [];

  List<Book> get allBooks => _books;
  List<Book> get searchBooks => _searchBooks;
  List<Book> get savedBooks => _savedBooks;

  // SAVED BOOKS LIST FUNCTIONALITY
  void toggleSavedBook(Book book) {
    bookIsSaved(book) ? _savedBooks.remove(book) : _savedBooks.add(book);
    notifyListeners();
  }

  bool bookIsSaved(Book book) {
    return _savedBooks.contains(book);
  }

  // BOOKS SEARCH FUNCTION
  void runBookSearch(String query) {
    if (query.isEmpty) {
      _searchBooks = _books;
    } else {
      _searchBooks = _books
          .where((book) =>
              book.title.toLowerCase().contains(query.toLowerCase()) ||
              book.author.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
