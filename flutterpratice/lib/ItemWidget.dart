import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterpratice/Catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
          child: ListTile(
        leading:  Image.asset(item.image),
        title: Text(item.name), 
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price.toString()}"),
      ),
    );
  }
}
