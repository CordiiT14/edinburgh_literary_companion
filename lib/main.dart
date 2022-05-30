import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/location_view.dart';
import 'pages/browse.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      // TODO create loading widget
      '/' : (context) => Loading(),
      // TODO create home widget
      '/home' : (context) => Home(),
      //TODO create Browse widget
      '/browse' : (context) => Browse(),
      //TODO create Browse widget
      '/location' : (context) => LocationView(),
    },
  ));
}

