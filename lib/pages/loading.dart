import 'package:flutter/material.dart';
import 'package:edin_lit_companion/pages/home.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {

  @override
  void initState(){
    super.initState();
    Future.delayed(
      const Duration(seconds:3),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
                'assets/recolourLogo.png',
              width: 300.0,
            ),
          ),
        );
  }
}
