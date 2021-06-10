import 'package:flutter/material.dart';
import 'package:flutterpratice/HomePage.dart';
import 'package:flutterpratice/LoginPage.dart';
import 'package:flutterpratice/MyRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: LoginPage(),
  routes: {
    Routes.homePage : (context) => HomePage(),
    Routes.loginPage : (context) => LoginPage(),
  },
    );
  }
}