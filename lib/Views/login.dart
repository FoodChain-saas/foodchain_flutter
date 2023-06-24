import 'package:flutter/material.dart';
import 'package:foodchain_flutter/controllers/auth_controller.dart';
import 'package:foodchain_flutter/utilities/show_error_snackbar.dart';
import 'package:get/get.dart';
import '../utilities/route_paths.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthController _authController = Get.put(AuthController());

  final _formKey = GlobalKey<FormState>();

  var passwordVisible = false.obs;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
          child: Form(
              key: _formKey,
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
                          controller: _emailController,
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
                        child: Obx(() => TextFormField(
                              obscureText: passwordVisible.value,
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
                                    passwordVisible.value =
                                        !passwordVisible.value;
                                  },
                                  icon: const Icon(Icons.visibility),
                                ),
                              ),
                            )),
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
                        onTap: () async {
                          if (!_formKey.currentState!.validate()) {
                            showErrorSnackbar("Some fields are incorrect");
                          }

                          var loggedIn =
                              await _authController.signInwithEmailAndPassword(
                                  _emailController.text.trim(),
                                  _passwordController.text.trim());

                          if (loggedIn) {
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
                              'Login',
                              style: TextStyle(
                                color: Color(
                                    0xFFDADADA), // Text color in dark mode
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
              ))),
    );
  }
}
