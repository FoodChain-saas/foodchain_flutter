import 'package:flutter/material.dart';

import 'Bottomsheet.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Onboard1.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),

    );


  }

}
// // SizedBox(height: 16.0),
                     // Container(
                     //   child: Text(
                     //     'The only decentralized way to fill your belly',
                     //     textAlign: TextAlign.center,
                     //     style: TextStyle(
                     //       fontSize: 16.0,
                     //     ),
                     //   ),
                     // ),

           //           // SizedBox(height: 32.0),
           //           ElevatedButton(
           //             onPressed: () {
           //               // Handle "Continue with Google" button onPressed event
           //             },
           //             child: Text('Continue with Google'),
           //           ),
           //           SizedBox(height: 8.0),
           //           ElevatedButton(
           //             onPressed: () {
           //               // Handle "Signup" button onPressed event
           //             },
           //             child: Text('Signup'),
           //           ),
           //           SizedBox(height: 8.0),
           //           TextButton(
           //             onPressed: () {
           //               // Add your logic for "Continue with login" button here
           //             },
           //             child: Text('Continue with login'),
           //           ),
           //         );
           //       }
           //   );
           // }
           //

