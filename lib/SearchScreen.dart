import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_database/firebase_database.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<dynamic> products = [];
  List<dynamic> filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _productController = TextEditingController();
  final TextEditingController _platformController = TextEditingController();
  bool isFormVisible = false;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  // Fetch products from FakeStore API
  Future<void> _fetchProducts() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        setState(() {
          products = json.decode(response.body);
          filteredProducts = products;
        });
      } else {
        _showError('Failed to load products. Please try again.');
      }
    } catch (e) {
      _showError('An error occurred while fetching products: $e');
    }
  }

  // Show error message in a Snackbar
  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  // Search products
  void _searchProduct(String query) {
    final results = products.where((product) {
      final name = product['title'].toLowerCase();
      final searchQuery = query.toLowerCase();
      return name.contains(searchQuery);
    }).toList();

    setState(() {
      filteredProducts = results;
    });
  }

  // Submit a product to Firebase if it doesn't exist
  Future<void> _submitToFirebase(Map<String, dynamic> product) async {
    final databaseReference = FirebaseDatabase.instance.ref();
    final existingProducts = await databaseReference.child('products').get();

    final productTitle = product['title'].toLowerCase();

    if (existingProducts.value != null) {
      final existingProductTitles = (existingProducts.value as Map)
          .values
          .map((e) => (e as Map)['title'].toLowerCase())
          .toList();

      if (!existingProductTitles.contains(productTitle)) {
        await databaseReference.child('products').push().set({
          'title': product['title'],
          'price': product['price'],
          'image': product['image'],
          'description': product['description'],
        });
        _showMessage('Product added to Firebase.');
      } else {
        _showMessage('Product already exists in Firebase.');
      }
    } else {
      await databaseReference.child('products').push().set({
        'title': product['title'],
        'price': product['price'],
        'image': product['image'],
        'description': product['description'],
      });
      _showMessage('Product added to Firebase.');
    }
  }

  // Show a message in a Snackbar
  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
    ));
  }

  // Show the form for missing products
  void _showMissingProductForm() {
    setState(() {
      isFormVisible = true;
    });
  }

  // Handle form submission for missing products
  Future<void> _handleFormSubmit() async {
    final name = _nameController.text.trim();
    final productName = _productController.text.trim();
    final platform = _platformController.text.trim();

    if (name.isNotEmpty && productName.isNotEmpty && platform.isNotEmpty) {
      final databaseReference = FirebaseDatabase.instance.ref();
      await databaseReference.child('missing_products').push().set({
        'name': name,
        'product_name': productName,
        'platform_needed': platform,
      });

      // Clear form
      _nameController.clear();
      _productController.clear();
      _platformController.clear();

      // Hide form
      setState(() {
        isFormVisible = false;
      });

      _showMessage('Missing product submitted to Firebase.');
    } else {
      _showError('Please fill all fields!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => _searchProduct(_searchController.text),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Products',
                border: OutlineInputBorder(),
              ),
              onChanged: _searchProduct,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.75,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return GestureDetector(
                  onTap: () => _submitToFirebase(product),
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          product['image'],
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product['title'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text('\$${product['price']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          if (isFormVisible) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _productController,
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _platformController,
                decoration: InputDecoration(
                  labelText: 'Platform Needed',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _handleFormSubmit,
              child: Text('Submit Missing Product'),
            ),
          ] else ...[
            ElevatedButton(
              onPressed: _showMissingProductForm,
              child: Text('Submit Missing Product'),
            ),
          ],
        ],
      ),
    );
  }
}
