import 'package:flutter/material.dart';

class GreetPage extends StatelessWidget {
  final String name;

  const GreetPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greet Page'),
      ),
      body: Center(child: Text('Hello, $name!')),
    );
  }
}
