import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/home.dart';
import 'package:edin_lit_companion/pages/loading.dart';
import 'package:edin_lit_companion/pages/location_view.dart';
import 'package:edin_lit_companion/pages/browse.dart';
import 'package:edin_lit_companion/pages/view_map.dart';
import 'package:edin_lit_companion/pages/saved.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/location',
    routes: {
      // TODO create loading widget
      '/' : (context) => Loading(),
      // TODO create home widget
      '/home' : (context) => Home(),
      //TODO create Browse widget
      '/browse' : (context) => Browse(),
      //TODO create Browse widget
      '/location' : (context) => LocationView(),
      '/map' : (context) => ViewMap(),
      '/saved' : (context) => Saved(),
    },
  ));
}

