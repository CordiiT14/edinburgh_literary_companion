import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Book.dart';
import 'package:edin_lit_companion/pages/book_detail.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:provider/provider.dart';

import 'package:expandable/expandable.dart';

// CARD WIDGET FOR BOOKS list on Books screen using data passed from books.dart

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);
  final Book book;
  // BookDetail(this.book);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
        header: Text(book.title),
        collapsed: Text(book.author),
        expanded: Column(
          children: [
            Text(book.author),
            Text(book.description, softWrap: true),
            Image.asset(book.image),
          ],
        ),
    );
  }
}
