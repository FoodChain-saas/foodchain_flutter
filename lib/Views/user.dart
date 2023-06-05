import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/bottom-navigation.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => const CircleAvatar(
                radius: 50.0,
                // backgroundImage: NetworkImage()
              ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.only(
                  right: 84,
                  left: 84,
                  top: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Get.toNamed(RoutePaths.editProfileScreen);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: const Size(double.infinity, 100),
                    backgroundColor: const Color(0XFF1C8E77),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Satoshi',
                        fontSize: 14),
                  ),
                ),
              ),
              Container(height: 30),
              const Divider(
                color: Color(0xFF000000),
              ),
              Container(height: 15),
              TextButton(
                onPressed: () {  },
                child: ListTile(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  leading: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'svgs/Logout.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
                Container(height: 15),
                TextButton(
                  child: ListTile(
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    leading: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'svgs/Logout.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                onPressed: () async {
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
