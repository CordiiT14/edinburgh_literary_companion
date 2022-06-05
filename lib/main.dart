import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/home.dart';
import 'package:edin_lit_companion/pages/loading.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:edin_lit_companion/pages/saved.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';
import 'package:edin_lit_companion/providers/books_provider.dart';
import 'package:edin_lit_companion/pages/books.dart';

void main(){
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Locations()),
          ChangeNotifierProvider(create: (_) => Books()),
        ],
        child: const EdinLit(),
      )
  );
}

class EdinLit extends StatelessWidget {
  const EdinLit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // TODO create loading widget
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/browse': (context) => const Browse(),
        '/map': (context) => const ViewMap(),
        '/saved': (context) => const Saved(),
        '/books' : (context) => const BooksList(),
      },
      //app theme
      theme: ThemeData(
        fontFamily: 'MavenPro',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(87, 88, 187, 9.0),
          secondary: const Color.fromRGBO(241, 135, 1, 1),
        ),
      ),
    ));
  }
}


