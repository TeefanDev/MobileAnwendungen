import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Add your logic for the "Home" button here
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add your logic for the "Profile" button here
            },
          ),
        ],
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter text',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter text',
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Add your logic for the "Start Exercise" button here
            },
            child: const Text('Start Exercise'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trainingsplan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Kalendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contacts',
          ),
        ],
      ),
    );
  }
}