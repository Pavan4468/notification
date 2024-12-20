import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Fire TV Stick', 'image': 'assets/fire.jpg'},
    {'name': 'Kadlekai', 'image': 'assets/kadle.webp'},
    {'name': 'Sony Headphones', 'image': 'assets/sony.jpg'},
    {'name': 'Smart Watch', 'image': 'assets/watch.jpg'},
    {'name': 'Amazon Gift Card', 'image': 'assets/amazon.png'},
    {'name': 'Myntra Shirt', 'image': 'assets/myntra.jpg'},
    {'name': 'Flipkart Offer', 'image': 'assets/flipkart.png'},
    {'name': 'AJIO Deal', 'image': 'assets/ajio.png'},
    {'name': 'Fridge', 'image': 'assets/firdege.webp'},
    {'name': 'iPhone', 'image': 'assets/iphone.jpg'},
    {'name': 'Shirt', 'image': 'assets/shirt.jpg'},
    {'name': 'Samsung Z Fold', 'image': 'assets/z fold.png'},
    {'name': 'Air Conditioner', 'image': 'assets/ac.jpg'},
    {'name': 'Laptop Bag', 'image': 'assets/baglaptop.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Image.asset(
                product['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product['name']!),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
