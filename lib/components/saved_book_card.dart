import 'package:edin_lit_companion/components/book_list_card.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Book.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:edin_lit_companion/pages/book_detail.dart';

class SavedBookCard extends StatelessWidget {
  final Book book;

  const SavedBookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0),
      child: ListTile(
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => BookDetail(book: book)
        //     ),
        //   );
        // },
        title: Text(
          book.title,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blueGrey[200],
          ),
        ),
        subtitle: Text(
          book.author,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.blueGrey[150],
          ),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            //this is useful for accessibility mode
            semanticLabel: 'remove from saved',
          ),
          //this comes up if you long tap on the icon
          tooltip: 'remove from saved',
          onPressed: () {
            context.read<Books>().toggleSavedBook(book);
          },
        ),
      ),
    );
  }
}
