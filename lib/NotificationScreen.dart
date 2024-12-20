import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class NotiScreen extends StatefulWidget {
  @override
  _NotiScreenState createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  final DatabaseReference _database = FirebaseDatabase.instance.ref('missing_products');

  List<Map<String, dynamic>> notifications = [];

  @override
  void initState() {
    super.initState();
    _fetchNotifications();
  }

  void _fetchNotifications() {
    _database.onValue.listen((event) {
      final data = event.snapshot.value;
      if (data is Map) {
        final List<Map<String, dynamic>> loadedNotifications = [];
        data.forEach((key, value) {
          if (value is Map) {
            loadedNotifications.add({
              "name": value['name'] ?? 'Unknown',
              "product_name": value['product_name'] ?? 'Unknown Product',
              "platform_needed": value['platform_needed'] ?? 'Unknown Platform',
            });
          }
        });
        setState(() {
          notifications = loadedNotifications;
        });
      } else {
        setState(() {
          notifications = [];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: notifications.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Name: ${notification["name"]}\nProduct: ${notification["product_name"]}\nPlatform: ${notification["platform_needed"]}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Hi ${notification["name"]}, your ${notification["product_name"].toLowerCase()} is available on ${notification["platform_needed"]}. Delivery details can be checked on the platform.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
