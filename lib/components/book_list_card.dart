import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Book.dart';
import 'package:edin_lit_companion/pages/book_detail.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:provider/provider.dart';

import 'package:expandable/expandable.dart';

// CARD WIDGET FOR BOOKS list on Books screen using data passed from books.dart

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key, required this.book}) : super(key: key);
  final Book book;
  // BookDetail(this.book);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
      child: ExpandablePanel(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => context.read<Books>().toggleSavedBook(book),
                iconSize: 25.0,
                icon: Icon(
                  Icons.menu_book,
                  color: context.watch<Books>().bookIsSaved(book) ? Colors.deepOrange[400] : Colors.grey[500],
                ),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(book.title),
                  Text('by ${book.author}'),
                ],
              ),
            ],
          ),
          collapsed: Text(''),
          expanded: Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 2, 0),
                        child: Text(
                            book.description,
                            // softWrap: true,
                          textAlign: TextAlign.left,

                        ),
                      ),
                    ),
                Expanded(
                  flex: 1,
                    child: Image.asset('assets/${book.image}'),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
