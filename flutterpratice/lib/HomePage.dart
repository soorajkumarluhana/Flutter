import 'package:flutter/material.dart';
import 'package:flutterpratice/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CataLog App"),
      ),
      body: Center(child: Text("Login Page"),),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}