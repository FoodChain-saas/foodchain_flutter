import 'package:flutter/material.dart';

class RecoveryEmail extends StatelessWidget {
  RecoveryEmail({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Reset  Password',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              color: Color(0xFF1A66FF),
              )),
            ),
          ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Recovery Email',
                  border: OutlineInputBorder(),
                  hintText: "example@gmail.com",
                  alignLabelWithHint: false,
                  filled: true,
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
                  'Next',
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Text(
                    'Use Phone Number Instead',
                    style: TextStyle(
                      color: Color(0xFF6F7DF8),
                      fontSize: 15,
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ));
  }
}
