import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.white,
      child: Row(
        children: [
          buildMenuItem(icon: Icons.person, text: 'Profile'),
          buildDivider(),
          buildMenuItem(icon: Icons.category, text: 'Categories'),
          buildDivider(),
          buildMenuItem(icon: Icons.favorite, text: 'Favorites'),
          buildDivider(),
          buildMenuItem(icon: Icons.info, text: 'About Us'),
          buildDivider(),
          buildMenuItem(icon: Icons.phone, text: 'Contact'),
          buildDivider(),
          buildMenuItem(icon: Icons.support, text: 'Support'),
          buildDivider(),
          buildMenuItem(icon: Icons.dark_mode, text: 'Dark Mode'),
        ],
      ),
    );
  }

  Widget buildMenuItem({required IconData icon, required String text}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(height: 8.0),
          Text(text),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      height: 40.0,
      width: 1.0,
      color: Colors.grey,
    );
  }
}

