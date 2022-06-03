import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      // TODO create loading widget
      '/' : (context) => Loading(),
      // TODO create home widget
      '/home' : (context) => Home(),
      //TODO create Browse widget
      '/browse' : (context) => Browse(),
      //TODO create Browse widget
      '/location' : (context) => Location(),
    },
  ));
}

