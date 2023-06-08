import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/route_names.dart';
import '../utilities/route_paths.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  String currentRouteName = RouteNames.homepage;

  int currentRouteIndex = 0;

  Map<String, int> pagesListIndicies = {
    RoutePaths.homepage: 0,
    // RoutePaths.favorites: 1,
    // RoutePaths.user: 2,
    // RoutePaths.tray: 3,
  };

  Map<int, String> pagesListNames = {
    0: RoutePaths.homepage,
    // 1: RoutePaths.favorites,
    // 2: RoutePaths.user,
    // 3: RoutePaths.tray,
  };

  void setCurrentIndex(int index) {
    setState(() {
      currentRouteIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(context);
    if (route != null) {
      currentRouteName = route.settings.name!;

      setCurrentIndex(pagesListIndicies[currentRouteName] ?? 0);
    }

    return Hero(
        tag: 'bottom_navigation',
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xFF929292),
          // unselectedItemColor: Color(0xFFB3B3B3),
          selectedItemColor: const Color(0xFF1A66FF),
          onTap: (index) {
            setCurrentIndex(index);

            if (route != null) {
              if (currentRouteName != pagesListNames[currentRouteIndex]) {
                Get.toNamed(
                    pagesListNames[currentRouteIndex] ?? RoutePaths.homepage);
              }
            }
          },
          currentIndex: currentRouteIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'User',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: 'Tray',
            ),

          ],
        ));
  }
}
