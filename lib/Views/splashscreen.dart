import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Utilities/route_paths.dart';

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
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RoutePaths.onboarding);
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