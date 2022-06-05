import 'package:edin_lit_companion/components/saved_book_card.dart';
import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';
import 'package:edin_lit_companion/components/saved_location_card.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:edin_lit_companion/models/Location.dart';
import 'package:edin_lit_companion/models/Book.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Location> savedLocations =
        context.watch<Locations>().savedLocations;
    final List<Book> savedBooks = context.watch<Books>().savedBooks;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Saved'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.location_on_outlined),
                text: 'Locations',
              ),
              Tab(
                icon: Icon(Icons.menu_book_rounded),
                text: 'Books',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //locations tab
            savedLocations.isEmpty
                ? const Center(
                    child: Text(
                      'No saved locations',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                : ListView(
                    //for each location in savedLocations list, render a LocationCard widget
                    children: savedLocations
                        .map((location) => LocationCard(location: location))
                        .toList(),
                  ),
            //books tab
            savedBooks.isEmpty
                ? const Center(
                    child: Text(
                      'No saved books',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                : ListView(
                    //for each location in savedBooks list, render a BookCard widget
                    children: savedBooks
                        .map((book) => SavedBookCard(book: book))
                        .toList(),
                  ),
          ],
        ),
        bottomNavigationBar: const Navigation(
          selectedIndex: 4,
        ),
      ),
    );
  }
}
