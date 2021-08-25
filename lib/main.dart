import 'package:civiceye/View/LoginScreen/LoginScreen.dart';
import 'package:civiceye/View/SplashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/BottomNavigation/BottomNavigation.dart';
import 'View/ProfileFormScreen/ProfileFormScreen.dart';
import 'View/SignUpScreen/SignUpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/',
      home: SplashScreen(),
      routes: {
        // '/':(context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/reg': (context) => SignUpScreen(),
        '/profileForm': (context) => ProfileFormScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
