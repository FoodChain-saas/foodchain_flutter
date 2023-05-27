import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Components/bottom-navigation.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ProductCategoryList> productCategories = [
    ProductCategoryList(categoryName: 'Top Bites', products: [
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
    ]),
    ProductCategoryList(categoryName: 'Swallow', products: [
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
    ]),
    ProductCategoryList(categoryName: 'Snacks', products: [
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
      Product(name: 'Rice', image: 'assets/images/Straw berry Cup Cake.png'),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMenuBar(),
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: Colors.black,
      body: ListView(children: [
        // buildMenuBar(),
        const Divider(height: 16.0),
        // buildSearchBar(),
        // SizedBox(height: 16.0),
        // buildProfileImage(),
        // SizedBox(height: 16.0),
        buildTopRowImage(),
        ...productCategories.map((category) =>
            buildSection(category.categoryName, category.products))
      ]),

      // body: ListView(
      //   padding: const EdgeInsets.all(16.0),
      //   children: [
      //     buildMenuBar(),
      //     const SizedBox(height: 16.0),
      //     // buildSearchBar(),
      //     // SizedBox(height: 16.0),
      //     // buildProfileImage(),
      //     // SizedBox(height: 16.0),
      //     buildTopRowImage(),
      //     const SizedBox(height: 8.0),
      //     ...buildSection('Top Bites', 'See All', [
      //       buildImageSection('assets/images/Straw berry Cup Cake.png',
      //           'Straw berry Cup Cake.png', '000.056 Coins'),
      //       buildImageSection('assets/images/Box of chocolate cookies.png',
      //           'Food 2', '1.2 Coins'),
      //       buildImageSection(
      //           'assets/images/puff puff2.jpg', 'Food 3', '000.09 Coins'),
      //       // Add more image sections here
      //     ]),

      //     const SizedBox(height: 8.0),
      //     ...buildSection('Complete Eat', 'See All', [
      //       buildImageSection(
      //           'assets/images/Full burger meal.png', 'Food 4', '22 Coins'),
      //       buildImageSection(
      //           'assets/images/Full Sausage meal.png', 'Food 5', '17 Coins'),
      //       buildImageSection('assets/puff puff2.jpg', 'Food 6', '19 Coins'),
      //       // Add more image sections here
      //     ]),
      //     const SizedBox(height: 8.0),
      //     ...buildSection('Protein Pack', 'See All', [
      //       buildImageSection(
      //           'assets/images/Ham Burger.png', 'Food 7', '21 Coins'),
      //       buildImageSection('assets/images/pizza.png', 'Food 8', '16 Coins'),
      //       buildImageSection(
      //           'assets/images/puff puff2.jpg', 'Food 9', '23 Coins'),
      //       // Add more image sections here
      //     ]),
      //   ],
      // ),
    );
  }

  AppBar buildMenuBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // Add your logic for menu button here
        },
      ),
      title: buildSearchBar(),
      actions: [buildProfileImage()],
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

  Widget buildTopRowImage() {
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

  Widget buildSection(String title, List<Product> products) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200.0,
              margin: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Image.asset(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    products[index].name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    products[index].name,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            );
          },
        ));

    // return [
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       const Text(
    //         'Top Bites',
    //         style: TextStyle(
    //           color: Color(0xFF1A66FF),
    //           fontSize: 24.0,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       TextButton(
    //         onPressed: () {
    //           // Add your logic for "See All" button here
    //         },
    //         child: const Text(
    //           'See all',
    //           style: TextStyle(
    //             fontSize: 16.0,
    //             color: Color(0xFF929292),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(height: 8.0),
    //   GridView.count(
    //     scrollDirection: Axis.vertical,
    //     shrinkWrap: true,
    //     crossAxisCount: 3,
    //     crossAxisSpacing: 16.0,
    //     mainAxisSpacing: 16.0,
    //     children: imageSections,
    //   ),
    // ];
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

class ProductCategoryList {
  String categoryName;
  List<Product> products;
  ProductCategoryList({required this.categoryName, required this.products});
}

class Product {
  String name;
  String image;
  Product({required this.name, required this.image});
}
