import 'dart:math';

import 'package:flutter/material.dart';


class RandomFact extends StatelessWidget {
  const RandomFact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> facts = [
      "Edinburgh Castle is built on an extinct volcano.",
      "The Royal Mile is actually one mile and 107 yards long.",
      "Edinburgh was the first city in the entire world to have its own fire service.",
      "Edinburgh has 112 parks and more trees per head of population than any other city in the U.K.",
      "J.K. Rowling wrote some of Harry Potter in an Edinburgh café (The Elephant) and took inspiration from the landscape for her characters and locations.",
      "The Encyclopedia Britannica was first produced in Edinburgh",
      "St. Margaret’s Chapel, located within the walls of Edinburgh Castle, is the oldest building in Edinburgh. It was built in memory of Queen Margaret, who is said to have died from a broken heart after the death of her husband.",
      "'You’ll have had your tea?' was once a common Edinburgh greeting and is still used today as a way to avoid putting on a kettle; its believed the phrase originated in the 18th century with a nobleman named Mackintosh of Borlum who didn’t like the sound of tea-slurping at social gatherings.",
      "The “Stone of Destiny” is the traditional coronation stone of Scottish and English royalty and is kept at Edinburgh Castle with the crown jewels of Scotland; according to legend, the real stone was secretly swapped for a fake one at some point in its history.",
      "Edinburgh Castle’s Great Hall has a small window high above the fireplace known as “laird’s lug” which translates into “the Lord’s ear.” The window allowed castle residents to eavesdrop on conversations taking place in the Great Hall.",
      "The National Monument on Calton Hill is known as “Edinburgh’s Folly” or “Edinburgh’s Shame.” It was modeled after the Parthenon in Athens, but funding for the build ran out and it was never completed.",
      "Edinburgh has more listed buildings than anywhere in the world.",
    ];

    String randomFact = facts[Random().nextInt(facts.length)]; // Create a random fact from the list of facts

    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/edinburgh-castle.jpeg'),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Card(
                color: Colors.blue[100], // Background colour
                elevation: 10, // Shadow size
                shadowColor: Colors.deepPurple, // Shadow colour
                shape: RoundedRectangleBorder( // Creates rounded borders
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(children: [
                  const ListTile(
                    leading: Icon(
                      Icons.bubble_chart_sharp,
                      color: Colors.deepPurple,
                      size: 50.0,
                    ),
                    title: Text('Did You Know?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'MavenPro-Black',
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      randomFact,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'MavenPro-Regular',
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
    );
  }
}
