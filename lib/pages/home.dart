import 'package:flutter/material.dart';

import 'package:myapp/pages/greet.dart';
import 'package:myapp/pages/home_pizza.dart';
import 'package:myapp/pages/product.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GreetPage(name: _controller.text),
                ),
              );
            },
            child: const Text('Go to Detail Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
            child: const Text('Go to Product Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePizzaPage(),
                ),
              );
            },
            child: const Text('Go to Pizza Page'),
          ),
        ],
      ),
    );
  }
}
