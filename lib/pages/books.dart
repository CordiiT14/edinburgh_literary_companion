import 'package:edin_lit_companion/components/book_list_card.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/models/Book.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';

// BOOKS PAGE - data from books_data.dart via books_provider

class BooksList extends StatefulWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  @override
  Widget build(BuildContext context) {
    List<Book> bookSearchResults = context.watch<Books>().searchBooks;
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              child: TextField(
                onChanged: (value) =>
                    context.read<Books>().runBookSearch(value),
                decoration: const InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    // TODO colour here
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          // TODO colour here
                          ),
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              ),
            ),
          ),
          Expanded(
            child: bookSearchResults.isNotEmpty
                ? ListView.builder(
                    itemCount: bookSearchResults.length,
                    itemBuilder: (context, index) => const Card(
                      child: BookDetail(),
                    ),
                  )
                : const Center(
                child: Text('No results found'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 1,
      ),
    );
  }
}
