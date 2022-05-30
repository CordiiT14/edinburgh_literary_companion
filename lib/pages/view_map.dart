import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';

class ViewMap extends StatefulWidget {
  const ViewMap({Key? key}) : super(key: key);

  @override
  State<ViewMap> createState() => _ViewMapState();
}

class _ViewMapState extends State<ViewMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Map!',
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
