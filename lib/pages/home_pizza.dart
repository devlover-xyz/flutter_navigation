import 'package:flutter/material.dart';
import 'package:myapp/pages/pizza_selection.dart';

class HomePizzaPage extends StatefulWidget {
  const HomePizzaPage({super.key});

  @override
  State<HomePizzaPage> createState() => _HomePizzaPageState();
}

class _HomePizzaPageState extends State<HomePizzaPage> {
  String? _selectedPizza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Select Pizza'),
              onPressed: () async {
                final selectedPizza = await Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => PizzaSelectionScreen()),
                );
                setState(() {
                  _selectedPizza = selectedPizza;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('Selected Pizza: $_selectedPizza'),
          ],
        ),
      ),
    );
  }
}
