import 'package:flutter/material.dart';
import 'package:edin_lit_companion/components/navigationBar.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'browse!',
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
