import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utilities/route_paths.dart';

class Signup extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();

  bool passwordVisible = false;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirminitPasswordController =
  TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        // foregroundColor: Colors.transparent,
        backgroundColor: const Color(0xFF0D0D0D),
        title: const Center(
          child: Text('Signup',
          style: TextStyle(color: Color(0xFF1A66FF)),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                  ),

                  alignLabelWithHint: false,
                  filled: true,
                ),
              ),
      ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  alignLabelWithHint: false,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:  TextFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: "phone number",
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
                obscureText: passwordVisible,
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  // labelText: "Password",
                helperText:
                "Password must contain special Characters",
                hintStyle: const TextStyle(color: Colors.black54),
                border: const OutlineInputBorder(),
            //     suffixIcon: IconButton(
            //       color: Colors.black,
            // //       icon: Icon(passwordVisible
            // //           ? Icons.visibility
            // //           : Icons.visibility_off),
            // //       onPressed: () {
            // //         setState(
            // //               () {
            // //             passwordVisible = _passwordVisible;
            // //           },
            // //         );
            // //       },
            // //     ),
            // //     alignLabelWithHint: false,
            // //     enabled: true,
            // //   ),
            // // ),
            // // ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Re-enter Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
              },
              style: ElevatedButton.styleFrom(
                 backgroundColor: const Color(0xFF1A66FF),
                 ), child: const Text('Signup'), // Set the button color to blue
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
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(RoutePaths.login);
                        },
                        child: const Text(
                          'Sign in',
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
    );
  }
}
