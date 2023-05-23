import 'package:flutter/material.dart';
import 'Views/signup.dart';
import 'Views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'App Title',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
    home: SplashScreen(),
    routes: {
    '/signup': (context) => Signup(),
    },
    );
  }
}

