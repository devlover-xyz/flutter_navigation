import 'package:flutter/material.dart';
import 'package:myapp/pages/about_page.dart';
import 'package:myapp/pages/contact_page.dart';

import 'package:myapp/pages/greet.dart';
import 'package:myapp/pages/home_pizza.dart';
import 'package:myapp/pages/product.dart';
import 'package:myapp/pages/tab_page.dart';

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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePizzaPage(),
                ),
              );
            },
            child: const Text('Go to Pizza Page'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('My APP'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
            ),
            ListTile(
              title: const Text('Tab Bar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TabPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
