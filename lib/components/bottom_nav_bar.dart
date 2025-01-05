import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)?
      onTabChange; // Correct declaration for a nullable callback

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) =>
            onTabChange?.call(value), // Use `?.call` to avoid null errors
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.white,
        activeColor: Colors.black,
        tabBackgroundColor: Colors.green,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.black),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
