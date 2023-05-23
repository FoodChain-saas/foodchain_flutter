import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utilities/route_paths.dart';
import 'login.dart';

class Signup extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();

  bool passwordVisible = false;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _ReEnterPasswordController = TextEditingController();

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
          child: Text(
            'Signup',
            style: TextStyle(color: Color(0xFF1A66FF)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  labelText: "Full Name",
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
              child: TextFormField(
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
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: _ReEnterPasswordController,
                decoration: InputDecoration(
                  labelText: 'Re-Enter Password',
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
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  maximumSize: const Size(double.infinity, 100),
                  backgroundColor: const Color(0xFF1A66FF),
                  side: const BorderSide(
                    color: Colors.teal,
                  ),
                ),
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offAllNamed(RoutePaths.loginpage);
                        },
                        child: const Text(
                          'Login ',
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