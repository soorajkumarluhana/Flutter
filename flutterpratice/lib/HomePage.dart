import 'package:flutter/material.dart';
import 'package:flutterpratice/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Catalog App", style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Text("Login Page"),),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}