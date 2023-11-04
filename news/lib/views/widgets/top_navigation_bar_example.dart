import 'package:flutter/material.dart';

class TopNavigationBarExample extends StatelessWidget {
  const TopNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Navigation Bar Example'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
              // For example, navigate to a search screen or show a search dialog.
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Implement settings functionality
              // For example, navigate to the settings screen or show a settings menu.
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Your app content goes here.'),
      ),
    );
  }
}
