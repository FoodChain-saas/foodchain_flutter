import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Utilities/route_paths.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _ReEnterPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
                'Reset  Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A66FF),
                ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _newPasswordController,
                decoration: InputDecoration(
                  labelText: 'new Password',
                  border: const OutlineInputBorder(),
                  hintText: ".............",
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _ReEnterPasswordController,
                decoration: InputDecoration(
                  labelText: 'Re enter Password',
                  border: const OutlineInputBorder(),
                  hintText: ".............",
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
              width: 342,
              height: 50,
              margin: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(RoutePaths.connectwaallet);
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  maximumSize: const Size(double.infinity, 100),
                  backgroundColor: const Color(0xFF1A66FF),
                  side: const BorderSide(
                    color: Color(0xFF1A66FF),
                  ),
                ),
                child: const Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
