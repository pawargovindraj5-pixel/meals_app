import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  final Function(String) onSelectScreen;

  const MainDrawer({required this.onSelectScreen});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Colors.amber,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26, color: Colors.white),
            title: Text(
              'Meals',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onTap: () => onSelectScreen('meals'),
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26, color: Colors.white),
            title: Text(
              'Filters',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onTap: () => onSelectScreen('filters'),
          ),
        ],
      ),
    );
  }
}
