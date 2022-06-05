import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Book.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:provider/provider.dart';
import 'package:expandable/expandable.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';

// CARD WIDGET FOR BOOKS list on Books page using data passed from books.dart
class BookDetail extends StatelessWidget {
  const BookDetail({Key? key, required this.book}) : super(key: key);
  final Book book;
  // BookDetail(this.book);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),

      // EXPANDABLE PANEL for viewing book details
      child: ExpandablePanel(
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'by ${book.author}',
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ICON BUTTON for adding books to Saved page
            IconButton(
              onPressed: () => context.read<Books>().toggleSavedBook(book),
              iconSize: 25.0,
              icon: Icon(
                context.watch<Books>().bookIsSaved(book)
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: context.watch<Books>().bookIsSaved(book)
                    ? Colors.red
                    : Colors.grey[500],
              ),
            ),
          ],
        ),
        collapsed: Text(''),

        // BOOK DETAIL VIEW when panel expanded
        expanded: Padding(
          padding: const EdgeInsets.fromLTRB(6, 4, 0, 10),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  book.description,
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Image.asset('assets/${book.image}'),
                    TextButton(
                      onPressed: () {
                        context.read<Locations>().setFilters(2);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Browse(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          'Find a local bookshop',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(87, 88, 187, 9.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
