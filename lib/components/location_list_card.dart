import 'package:flutter/material.dart';
import 'package:edin_lit_companion/models/Location.dart';

class LocationListCard extends StatelessWidget {
  // const LocationListCard({Key? key}) : super(key: key);

  const LocationListCard({required this.location});
  final Location location;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/location/$location');
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/monuments/${location.image}'),
          radius: 20.0,
        ),
        title: Text(location.name,
            style: const TextStyle(
              fontSize: 18.0,
            )),
        // subtitle: Text(location.address,
        //     style: const TextStyle(
        //       fontSize: 12.0,
        //     )),
        trailing: TextButton.icon(
          onPressed: () {},
          label: const Text(''),
          icon: Icon(
              Icons.favorite_border_outlined,
            color: Colors.grey[500],
          ),
        ),
        // isThreeLine: true,
      ),
    );
  }
}
