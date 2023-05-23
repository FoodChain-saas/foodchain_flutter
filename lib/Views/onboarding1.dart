import 'package:flutter/material.dart';
class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Center(
              // child: Row(children: [
              child: Image.asset("assets/images/Onboard1.png"),
              // ]),
            ),
            const Center(
              child: Text(
                "Let's get started",
                style: TextStyle(color: Colors.teal, fontSize: 20),
              ),
            ),
          ]),
        ),
      ),
    );
  }

}
