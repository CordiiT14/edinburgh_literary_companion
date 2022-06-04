

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final allLocations = LocationData().locations;

    List<Location> topAttractions = [
      allLocations[17],
      allLocations[21],
      allLocations[4]
    ];

    List<Location> topLandmarks = [
      allLocations[20],
      allLocations[2],
      allLocations[12]
    ];


    List topBookshops = [
      allLocations[28],
      allLocations[31],
      allLocations[32],
    ];


    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          // around whole page context
          padding: const EdgeInsets.all(12.0),
          child: Column(
            //column wraps all content
            children: [
              Row(
                // Row 1: Discover Literary Edinburgh Header
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Discover Literary \n  Edinburgh!',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Image.asset(
                          'assets/logoNoText.png',
                          width: 60.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                // Current placeholder wrapper for the search bar
                padding: const EdgeInsets.all(8.0),

                child: Container(
                  child: TextField(
                    onChanged: (value) {
                      context.read<Locations>().runSearch(value);
                    //  navigate to browse page with parameter of
                    //  context.read<Locations>().searchLocations;
                    },
                    onSubmitted: (value){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Browse()
                        )
                      );
                    },
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(241, 135, 1, 1),
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                    ),
                  ),
                ),
              ),

              // TOP ATTRACTIONS SECTION
                Row(
                  // Containing Attractions section heading and see more button
                  children: [
                    const Text(
                      'Top Attractions',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<Locations>().setFilters(0);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Browse(),
                          ),
                        );
                      },
                      child: const Text(
                        'see more',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 135, 1, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),


              // ATTRACTION CAROUSEL

              Carousel(topAttractions),


              // TOP LANDMARKS SECTION
              Row(
                // Containing Landmarks section heading and see more button
                children: [
                  const Text(
                    'Top Landmarks',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<Locations>().setFilters(1);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Browse(),
                        ),
                      );
                    },
                    child: const Text(
                      'see more',
                        style: TextStyle(
                          color: Color.fromRGBO(241, 135, 1, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),


              //LANDMARKS CAROUSEL
              Carousel(topLandmarks),

              // TOP BOOKSHOPS SECTION
              Row(
                // Containing Bookshops section heading and see more button
                children: [
                  const Text(
                    'Top Bookshops',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<Locations>().setFilters(2);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Browse(),
                        ),
                      );
                    },
                    child: const Text(
                      'see more',
                      style: TextStyle(
                        color: Color.fromRGBO(241, 135, 1, 1),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),

              //BOOKSHOP CAROUSEL
              Carousel(topBookshops),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 0,
      ),
    );
=======
    return Container();
>>>>>>> main
  }
}
