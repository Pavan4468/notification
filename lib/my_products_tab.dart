import 'package:flutter/material.dart';

class MyProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Products'),
      ),
      body: Center(
        child: Text('My Products Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
