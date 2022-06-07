import 'package:flutter/material.dart';
import 'package:edin_lit_companion/data/book_data.dart';
import 'package:edin_lit_companion/models/Book.dart';

// BOOKS PROVIDER - search functionality with option to uncomment code that will provide functionality for a books tbr list

class Books with ChangeNotifier {
  final List<Book> _books = BookData().books;
  List<Book> _searchBooks = BookData().books;
  final List<Book> _savedBooks = [];

  List<Book> get allBooks => _books;

  // SAVED BOOKS LIST FUNCTIONALITY
  List<Book> displaySaved() {
    sortList(_savedBooks);
    return _savedBooks;
  }

  void toggleSavedBook(Book book) {
    bookIsSaved(book) ? _savedBooks.remove(book) : _savedBooks.add(book);
    notifyListeners();
  }

  bool bookIsSaved(Book book) {
    var output = false;
    for (var savedBook in _savedBooks) {
      if(savedBook.title == book.title){
        output = true;
      }
    }
    return output;
  }

  void sortList(List<Book> books) {
    String getTitle (Book book) => book.title;
    books.sort((a, b) => getTitle(a).compareTo(getTitle(b)));
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

  //  resetting the search for when user navigates to books via navigation bar
  void resetSearch(){
    _searchBooks = _books;
    notifyListeners();
  }

//    displaying books in alphabetical order
  List<Book> displayBooks () {
    sortList(_searchBooks);
    return _searchBooks;
  }
}
