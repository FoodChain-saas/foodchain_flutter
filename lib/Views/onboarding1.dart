import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utilities/route_paths.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(50.0),
        ),
      ),
      builder: (BuildContext ctx) {
        return Container(
          color: Colors.black, // Dark background color
          child: Column(mainAxisSize: MainAxisSize.min, children: [
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
              onTap: () {
                // Add your logic for "Continue with Google" button here
              },
              child: Container(
                width: 342,
                height: 50,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black87, // Button background color in dark mode
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'images/google.png',
                      width: 16.0,
                      height: 16.0,
                    ),
                    const SizedBox(width: 8.0),
                    const Center(
                      child: Center(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Color(0xFFDADADA), // Text color in dark mode
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Container(
            //   width: 342,
            //   height: 50,
            //   margin: const EdgeInsets.all(5.0),
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //       ),
            //       maximumSize: const Size(double.infinity, 100),
            //       backgroundColor: const Color(0xFF1A66FF),
            //       side: const BorderSide(
            //         color: Color(0xFF1A66FF),
            //       ),
            //     ),
            //     child: const Text(
            //       'SignUp',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(RoutePaths.signup);
                // Add your logic for "Continue with Google" button here
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
                // child: Row(
                //   children: [
                //     Image.asset(
                //       'images/google.png',
                //       width: 16.0,
                //       height: 16.0,
                //     ),
                //     Container(child: SizedBox(width: 8.0)),
                //     const Text(
                //       'Continue with Google',
                //       style: TextStyle(
                //         color: Color(0xFFDADADA), // Text color in dark mode
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(RoutePaths.loginpage);
                // Add your logic for "Continue with Google" button here
              },
              child: Container(
                width: 342,
                height: 50,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  // border: Border.all(color: const Color(0xFF818CF8)),
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xFF818CF8),
                ), // Button background color in dark mode
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
            // Container(
            //   width: 342,
            //   height: 50,
            //   margin: const EdgeInsets.all(5.0),
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //       ),
            //       maximumSize: const Size(double.infinity, 100),
            //       backgroundColor: const Color(0xFF1A66FF),
            //       side: const BorderSide(
            //         color: Color(0xFF818CF80),
            //       ),
            //       ),
            //     child: const Text(
            //       'Login',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
          ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Onboard1.png'),
            fit: BoxFit.fill,
          ),
        ),
      )),
    );
  }
}
