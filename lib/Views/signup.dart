import 'package:flutter/material.dart';
import 'package:foodchain_flutter/controllers/auth_controller.dart';
import 'package:foodchain_flutter/utilities/show_error_snackbar.dart';
import 'package:get/get.dart';

import '../utilities/route_paths.dart';

class Signup extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();

  final _passwordVisible = false.obs;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _reEnterPasswordController =
      TextEditingController();

  final AuthController _authController = Get.put(AuthController());

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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  validator: (String? value) {
                    bool invalid = false;

                    if (value != null) {
                      if (value.isEmpty) {
                        invalid = true;
                      }

                      if (invalid) {
                        return "Invalid input provided";
                      }
                    }

                    return null;
                  },
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
                  validator: (String? value) {
                    if (value != null) {
                      bool invalid = false;

                      if (!GetUtils.isEmail(value)) {
                        invalid = true;
                      }

                      if (invalid) {
                        return "Invalid email";
                      }
                    }

                    return null;
                  },
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
                  validator: (String? value) {
                    if (value != null) {
                      bool invalid = false;

                      if (!GetUtils.isPhoneNumber(value)) {
                        invalid = true;
                      }

                      if (invalid) {
                        return "Invalid phone number";
                      }
                    }

                    return null;
                  },
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
                child: Obx(() => TextFormField(
                      obscureText: _passwordVisible.value,
                      controller: _passwordController,
                      validator: (String? value) {
                        if (value != null) {
                          bool invalid = false;

                          if (value.length < 8) {
                            invalid = true;
                          }

                          if (invalid) {
                            return "password must be atleast 8 characters, and contain special characters";
                          }
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: const OutlineInputBorder(),
                        alignLabelWithHint: false,
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            _passwordVisible.value = !_passwordVisible.value;
                          },
                          icon: const Icon(Icons.visibility),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Obx(() => TextFormField(
                      obscureText: _passwordVisible.value,
                      controller: _reEnterPasswordController,
                      validator: (String? value) {
                        if (value != null) {
                          bool invalid = false;

                          if (value.length < 8) {
                            invalid = true;
                          }

                          if (value != _passwordController.text) {
                            invalid = true;
                          }

                          if (invalid) {
                            return "passwords must match";
                          }
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Re-Enter Password',
                        border: const OutlineInputBorder(),
                        alignLabelWithHint: false,
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            _passwordVisible.value = !_passwordVisible.value;
                          },
                          icon: const Icon(Icons.visibility),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () async {
                  if (!_formKey.currentState!.validate()) {
                    showErrorSnackbar("Some fields are incorrect");
                  }

                  var registered = await _authController.register(
                      _emailController.text.trim(),
                      _passwordController.text.trim(),
                      _phoneNumberController.text.trim(),
                      _fullNameController.text.trim());

                  if (registered) {
                    Get.offAllNamed(RoutePaths.homepage);
                  }
                },
                child: Container(
                  width: 342,
                  height: 50,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
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
        )),
      ),
    );
  }
}
