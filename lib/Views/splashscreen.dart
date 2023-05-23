import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodchain_flutter/Views/signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToSignup();
  }

  void navigateToSignup() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splas3.png'),
            fit: BoxFit.cover,
          ),
        ),
          ),
        );
  }
}