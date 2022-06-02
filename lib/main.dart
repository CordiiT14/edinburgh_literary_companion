import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/home.dart';
import 'package:edin_lit_companion/pages/loading.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/pages/location_view.dart';
import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:edin_lit_companion/pages/saved.dart';
import 'package:provider/provider.dart';
import 'package:edin_lit_companion/providers/locations_provider.dart';

void main(){
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Locations()),
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
      initialRoute: '/home',
      routes: {
        // TODO create loading widget
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/browse': (context) => const Browse(),
        // '/location' : (context) => LocationView(),
        '/map': (context) => const ViewMap(),
        '/saved': (context) => const Saved(),
      },
    ));
  }
}



