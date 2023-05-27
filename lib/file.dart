import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: ProductList(),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<List<String>> products = [
    ['Product 1', 'Description 1', 'image1.jpg'],
    ['Product 2', 'Description 2', 'image2.jpg'],
    ['Product 3', 'Description 3', 'image3.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 200.0,
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Image.asset(
                  'assets/${products[index][2]}',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                products[index][0],
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                products[index][1],
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        );
      },
    );
  }
}
