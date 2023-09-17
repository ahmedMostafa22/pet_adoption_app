import 'package:flutter/material.dart';
import 'package:hello_world/data/datasource/data_source.dart';
import 'package:hello_world/presentation/widgets/pet_grid_tile.dart';

class PetsPage extends StatelessWidget {
  const PetsPage(
      {Key? key,
      required this.username,
      required this.email,
      required this.password})
      : super(key: key);
  final String username, email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome, $username',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: pets.length,
            itemBuilder: (context, i) => PetGridTile(pet: pets[i])));
  }
}
