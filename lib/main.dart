import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'LoginScreen.dart';
import 'dart:async';
import 'notifi_api.dart';

import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    // Initialize Firebase
  await Firebase.initializeApp();

  // Initialize Firebase Notifications
  final firebaseApi = FirebaseApi();
  await firebaseApi.initNotifications();
  //Remove this method to stop OneSignal Debugging 
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("bb6239af-2750-46ef-88af-4a1b0b5dcf5d");
  OneSignal.Notifications.requestPermission(true);
 
  


  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set the home page to SignInPage
      home: const LoginScreen(),
    );
  }
}