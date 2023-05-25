import 'package:flutter/material.dart';

import '../Components/bottom-navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildMenuBar(),
          SizedBox(height: 16.0),
          // buildSearchBar(),
          // SizedBox(height: 16.0),
          // buildProfileImage(),
          // SizedBox(height: 16.0),
          buildTopRollsImage(),
          const SizedBox(height: 8.0),
          buildSection('Top Bites', 'See All', [
            buildImageSection('assets/images/Straw berry Cup Cake.png', 'Straw berry Cup Cake.png', '000.056 Coins'),
            buildImageSection('assets/images/Box of chocolate cookies.png', 'Food 2', '1.2 Coins'),
            buildImageSection('assets/images/puff puff2.jpg', 'Food 3', '000.09 Coins'),
            // Add more image sections here
          ]),

          SizedBox(height: 8.0),
          buildSection('Complete Eat', 'See All', [
            buildImageSection('assets/images/Full burger meal.png', 'Food 4', '22 Coins'),
            buildImageSection(
                'assets/images/Full Sausage meal.png', 'Food 5', '17 Coins'),
            buildImageSection('assets/puff puff2.jpg', 'Food 6', '19 Coins'),
            // Add more image sections here
          ]),
          SizedBox(height: 8.0),
          buildSection('Protein Pack', 'See All', [
            buildImageSection(
                'assets/images/Ham Burger.png', 'Food 7', '21 Coins'),
            buildImageSection('assets/images/pizza.png', 'Food 8', '16 Coins'),
            buildImageSection(
                'assets/images/puff puff2.jpg', 'Food 9', '23 Coins'),
            // Add more image sections here
          ]),
        ],
      ),

    );
  }

  Widget buildMenuBar() {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Add your logic for menu button here
          },
        ),
        // const Spacer(),
        buildSearchBar(),
        buildProfileImage(),
      ],
    );
  }

  Widget buildSearchBar() {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget buildProfileImage() {
    return const CircleAvatar(
      radius: 30.0,
      backgroundImage: AssetImage('assets/avatar.jpg'),
      backgroundColor: Colors.blue,
    );
  }

  Widget buildTopRollsImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage('assets/images/rolls.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          // top: 16.0,
          bottom: 16.0,
          child: IconButton(
            icon: const Icon(Icons.more_horiz_sharp),
            onPressed: () {
              // Add your logic for sliding dots here
            },
          ),
        ),
        // Positioned(
        //   bottom: 16.0,
        //   child: Container(
        //     padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        //     decoration: BoxDecoration(
        //       color: Colors.black.withOpacity(0.6),
        //       borderRadius: BorderRadius.circular(8.0),
        //     ),
        //     child: Text(
        //       '25% Discount on All Rows',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 18.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget buildSection(String title, String seeAllText,
      List<Widget> imageSections) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Top Bites',
              style: TextStyle(
                color: Color(0xFF1A66FF),
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Add your logic for "See All" button here
              },
              child: const Text(
                'See all',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF929292),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: imageSections,
        ),
      ],
    );
  }


  Widget buildImageSection(String image, String name, String coins) {
    return Column(
      children: [
        Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          '',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'coins',
          style: TextStyle(
          fontSize: 14.0,
            color: Color(0xFF1A66FF),
          ),
        ),
      ],
    );
  }
}
