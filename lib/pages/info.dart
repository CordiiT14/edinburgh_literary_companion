import 'package:flutter/material.dart';

import '../components/navigationBar.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
          bottom: const TabBar(
            indicatorColor: Color.fromRGBO(241, 135, 1, 1),
            tabs: [
              Tab(
                icon: Icon(Icons.apps),
                text: 'How to Use the App',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Meet the Team',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              // Contents of first tab
              children: [
                const ListTile(
                  title: Text(
                    'How to Use the App',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  subtitle: Text(
                    'Edinburgh Literary Companion',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

                // Home summary
                const SizedBox(height:20),
                  Row(
                    children: [
                      const SizedBox(width:20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                              Icons.home_outlined,
                              color: Color.fromRGBO(241, 135, 1, 1),
                              size: 50,
                          ),
                          Text('Home'),
                        ],
                      ),
                      const SizedBox(width:20),
                      Flexible(
                        child: Column(
                          children: const [
                            Text(
                              "Our home page lists Edinburgh's top attractions, landmarks and bookshops.",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width:20),
                    ],
                  ),

                // Discover summary
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.explore_outlined,
                          color: Color.fromRGBO(241, 135, 1, 1),
                          size: 50,
                        ),
                        Text('Discover'),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "A detailed overview of all attractions, landmarks and bookshops.",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Map summary
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color.fromRGBO(241, 135, 1, 1),
                          size: 50,
                        ),
                        Text('Map'),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "All locations can be viewed on our detailed map of Edinburgh.",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Books summary
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.menu_book_rounded,
                          color: Color.fromRGBO(241, 135, 1, 1),
                          size: 50,
                        ),
                        Text('Books'),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "Discover books where the city of Edinburgh is part of the story.",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Saved summary
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Color.fromRGBO(241, 135, 1, 1),
                          size: 50,
                        ),
                        Text('Saved'),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "A list of all locations and books you have saved.",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),
              // End of navigation menu summaries
              ],
            ),
            ListView(
              // Contents of second tab
              children: [
                const ListTile(
                  title: Text(
                    'Meet the Team',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  subtitle: Text(
                    'Edinburgh Literary Companion',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

                // Team Member: Claire
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/team/claire.jpeg', //
                          width: 100,
                        ),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "Claire Laing",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Team Member: Daniel
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/team/daniel.jpeg', //
                          width: 100,
                        ),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "Daniel Ranson",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Team Member: Cordii
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/team/cordii.jpeg', //
                          width: 100,
                        ),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "Cordelia T. Johnstone",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),

                // Team Member: Kevin
                const SizedBox(height:20),
                Row(
                  children: [
                    const SizedBox(width:20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/team/kevin.jpeg', //
                          width: 100,
                        ),
                      ],
                    ),
                    const SizedBox(width:20),
                    Flexible(
                      child: Column(
                        children: const [
                          Text(
                            "Kevin Muldoon",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                  ],
                ),



              ],
            ),
          ],
        ),
        bottomNavigationBar: const Navigation(
          selectedIndex: 2,
        ),
      ),
    );
  }
}
