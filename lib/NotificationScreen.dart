import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('Notifications details will appear here'),
      ),
    );
  }
}
