import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodchain_flutter/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:foodchain_flutter/utilities/show_snackbar.dart';

import '../utilities/route_paths.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final AuthController _authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(milliseconds: 400), () {
        _showBottomSheet(context);
      });
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: false,
      elevation: 0,
      showDragHandle: false,
      isScrollControlled: true,
      isDismissible: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50.0),
        ),
      ),
      builder: (BuildContext ctx) {
        return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Container(
              decoration: const BoxDecoration(
                // Dark background color
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  width: Get.width,
                  height: 30,
                ),
                const Text(
                  'Welcome to FoodChain',
                  style: TextStyle(
                    color: Color(0xFF1A66FF),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'The only decentralized way to fill your belly',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFDADADA),
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () async {
                    var registered = await _authController.signInwithGoogle();

                    if (registered) {
                      Get.offAllNamed(RoutePaths.homepage);
                    }
                  },
                  child: Container(
                    width: 342,
                    height: 50,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors
                          .black87, // Button background color in dark mode
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 16.0,
                          height: 16.0,
                        ),
                        const SizedBox(width: 8.0),
                        const Center(
                          child: Center(
                            child: Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: Color(
                                    0xFFDADADA), // Text color in dark mode
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutePaths.signup);
                  },
                  child: Container(
                    width: 342,
                    height: 50,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(
                          0xFF1A66FF), // Button background color in dark mode
                    ),
                    child: const Center(
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                          color: Color(0xFFDADADA), // Text color in dark mode
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutePaths.loginpage);
                  },
                  child: Container(
                    width: 342,
                    height: 50,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      // border: Border.all(color: const Color(0xFF818CF8)),
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFF818CF8),
                    ),
                    // Button background color in dark mode
                    //  Container(child: SizedBox(width: 8.0)),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFDADADA), // Text color in dark mode
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Onboard1.png'),
            fit: BoxFit.fill,
          ),
        ),
      )),
    );
  }
}
