import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie_vibes/models/vegetables_shop.dart';
import 'package:veggie_vibes/pages/home_page.dart';
import 'package:veggie_vibes/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VegetablesShop(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins', // Set default font
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreenHandler(),
      ),
    );
  }
}

class SplashScreenHandler extends StatefulWidget {
  const SplashScreenHandler({super.key});

  @override
  _SplashScreenHandlerState createState() => _SplashScreenHandlerState();
}

class _SplashScreenHandlerState extends State<SplashScreenHandler>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Duration of the animation
      vsync: this,
    );

    // Create a fade-out animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Start the animation
    _controller.forward();

    // Navigate to the HomePage after the animation ends
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: const SplashScreen(), // The splash screen widget
    );
  }
}
