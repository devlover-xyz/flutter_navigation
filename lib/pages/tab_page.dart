// Contact Page
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Contacts"),
              Tab(icon: Icon(Icons.call), text: "Calls"),
              Tab(icon: Icon(Icons.chat), text: "Chats"),
            ],
          ),
          title: const Text('My Tabs'),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Contact Page")),
            Center(child: Text("Calls Page")),
            Center(child: Text("Chats Page")),
          ],
        ),
      ),
    );
  }
}
