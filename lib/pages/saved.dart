class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final List<Location> savedLocations =
        context.watch<Locations>().savedLocations;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(87, 88, 187, 9.0),
      ),
      body: savedLocations.isEmpty
          ? const Center(
              child: Text(
                'No saved locations',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          : ListView(
              //for each location in savedLocations list, render a LocationCard widget
              children: savedLocations
                  .map((location) => LocationCard(location: location))
                  .toList(),
            ),
      bottomNavigationBar: const Navigation(
        selectedIndex: 4,
      ),
    );
=======
    return Container();
>>>>>>> main
  }
}
