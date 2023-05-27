import 'package:flutter/material.dart';
import 'package:foodchain_flutter/Views/connect-waallet.dart';
import 'package:foodchain_flutter/Views/home-page.dart';
import 'package:foodchain_flutter/Views/login.dart';
import 'package:foodchain_flutter/Views/new-password.dart';
import 'package:foodchain_flutter/Views/recoverynumber.dart';
import 'package:get/get.dart';
import 'Constants/primary-color.dart';
import 'Utilities/route_names.dart';
import 'Utilities/route_paths.dart';
import 'Views/onboarding1.dart';
import 'Views/signup.dart';
import 'Views/splashscreen.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(FoodChainApp());
}

class FoodChainApp extends StatelessWidget {
  final splashScreen = SplashScreen();

  FoodChainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FoodChain',
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.dark,
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
            page: () => Onboarding(),
          ),
          GetPage(
            title: RouteNames.signup,
            name: RoutePaths.signup,
            page: () => Signup(),
          ),
          GetPage(
            title: RouteNames.loginpage,
            name: RoutePaths.loginpage,
            page: () => LoginPage(),
          ),
          GetPage(
            title: RouteNames.recoveryemail,
            name: RoutePaths.recoveryemail,
            page: () => NewPassword(),
          ),
          GetPage(
            title: RouteNames.recoverynumber,
            name: RoutePaths.recoverynumber,
            page: () => RecoveryNumber(),
          ),
          GetPage(
            title: RouteNames.newpassword,
            name: RoutePaths.newpassword,
            page: () => NewPassword(),
          ),
          GetPage(
            title: RouteNames.connectwaallet,
            name: RoutePaths.connectwaallet,
            page: () => const ConnectWaallet(),
          ),
          GetPage(
            title: RouteNames.homepage,
            name: RoutePaths.homepage,
            page: () => HomePage(),
          ),
        ]);
  }
}
