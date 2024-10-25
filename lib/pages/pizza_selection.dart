import 'package:flutter/material.dart';

class PizzaSelectionScreen extends StatelessWidget {
  const PizzaSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Pizza')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Margherita'),
            onTap: () {
              Navigator.of(context).pop('Margherita');
            },
          ),
          ListTile(
            title: const Text('Pepperoni'),
            onTap: () {
              Navigator.of(context).pop('Pepperoni');
            },
          ),
          ListTile(
            title: const Text('Vegetarian'),
            onTap: () {
              Navigator.of(context).pop('Vegetarian');
            },
          ),
        ],
      ),
    );
  }
}
