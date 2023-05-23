import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodchain_flutter/Views/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToSignup();
  }

  void navigateToSignup() {
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E), //
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context)
                .size
                .height, // Adjust the height as needed
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splashscreen.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SizedBox(height: 16.0),
          Center(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Positioned(
                  bottom: 16.0,
                  // left: 16.0,
                  // right: 16.0,
                  // top: 16.0,
                  child: Text(
                    'Snacks time made easy',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1129FC),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
