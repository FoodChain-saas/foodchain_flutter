import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utilities/route_paths.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _EmailController = TextEditingController();

  bool passwordVisible = false;

  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                // child: Row(children: [
                child: Image.asset("assets/images/GuyOnBike.png"),
                // ]),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  controller: _EmailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: const OutlineInputBorder(),
                    alignLabelWithHint: false,
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {
                        // Handle suffix icon button onPressed event
                      },
                      icon: const Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed(RoutePaths.recoverynumber);
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
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
                    color:
                    Color(0xFF1A66FF), // Button background color in dark mode
                  ),
                  child: Center(
                    child: const Text(
                      'Login',
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
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Color(0xFF252525),
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.offAllNamed(RoutePaths.signup);                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                              color: Color(0xFF0057FF),
                              fontSize: 13,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
