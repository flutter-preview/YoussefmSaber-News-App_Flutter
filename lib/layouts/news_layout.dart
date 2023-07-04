import 'package:flutter/material.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Text('asd'),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white70,
        onDestinationSelected: (index) {},
        destinations: const [
          NavigationDestination(
              selectedIcon: Icon(
                Icons.business_center_outlined,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.business_center_outlined,
                color: Colors.grey,
              ),
              label: 'Business'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.science_outlined,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.science_outlined,
                color: Colors.grey,
              ),
              label: 'Science'),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.sports_football_outlined,
                color: Colors.blueAccent,
              ),
              icon: Icon(
                Icons.sports_football_outlined,
                color: Colors.grey,
              ),
              label: 'Sports'),
        ],
      ),
    );
  }
}
