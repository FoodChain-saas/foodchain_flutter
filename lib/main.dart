import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'Utilities/route_names.dart';
import 'Utilities/route_paths.dart';
import 'Views/onboarding1.dart';
import 'Views/splashscreen.dart';

void main() {
  runApp(FoodChainApp());
}

class FoodChainApp extends StatelessWidget {
  final splashScreen = SplashScreen();

  FoodChainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FoodChain App',
        // theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        initialRoute: RoutePaths.splash,
        getPages: [
          GetPage(
            title: RouteNames.splash,
            name: RoutePaths.splash,
            page: () => splashScreen,
          ),
          GetPage(
            title: RouteNames.onboarding,
            name: RoutePaths.onboarding,
            page: () => const Onboarding(),
          ),
        ]);
  }
}
