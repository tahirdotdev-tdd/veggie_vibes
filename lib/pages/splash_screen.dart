import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300], // Set background color
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Replace with your logo
            Image.asset(
              'lib/images/logo.png', // Ensure you have the logo image in assets
              height: 300,
            ),
            const SizedBox(height: 20),
            // App name
            const Text(
              'Veggie Vibes', // Replace with your app name
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white, // Customize text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
