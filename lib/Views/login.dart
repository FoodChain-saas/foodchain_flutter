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
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
          child: SingleChildScrollView(
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
                      color: Color(0xFF494949),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
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
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFDADADA), // Text color in dark mode
                      ),
                    ),
                  ),
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
                            Get.offAllNamed(RoutePaths.signup);
                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                              color: Color(0xff5766F6),
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
      )),
    );
  }
}
