import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterpratice/Catalog.dart';
import 'package:flutterpratice/ItemWidget.dart';
import 'package:flutterpratice/drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item : CatalogModel.items[index]);
        },
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
