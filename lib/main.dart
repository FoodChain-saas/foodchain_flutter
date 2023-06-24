import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:foodchain_flutter/Views/connect_wallet.dart';
import 'package:foodchain_flutter/Views/home_page.dart';
import 'package:foodchain_flutter/Views/login.dart';
import 'package:foodchain_flutter/Views/new_password.dart';
import 'package:foodchain_flutter/Views/recoverynumber.dart';
import 'package:foodchain_flutter/Views/user.dart';
import 'package:get/get.dart';
import 'utilities/route_names.dart';
import 'utilities/route_paths.dart';
import 'Views/onboarding1.dart';
import 'Views/signup.dart';
import 'Views/splashscreen.dart';

// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const FoodChainApp());
}

class FoodChainApp extends StatelessWidget {
  final splashScreen = const SplashScreen();

  const FoodChainApp({super.key});
  @override
  Widget build(BuildContext context) {
    var preloadedSPlashImage = const AssetImage('assets/images/splash.png');
    print(preloadedSPlashImage);

    var onboardingImage = const AssetImage('assets/images/Onboard1.png');
    print(onboardingImage);

    return GlobalLoaderOverlay(
        child: GetMaterialApp(
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
            page: () => const Onboarding(),
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
            title: RouteNames.profile,
            name: RoutePaths.profile,
            page: () => const ProfileScreen(),
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
            page: () => const ConnectWallet(),
          ),
          GetPage(
            title: RouteNames.homepage,
            name: RoutePaths.homepage,
            page: () => HomePage(),
          ),
        ]));
  }
}
