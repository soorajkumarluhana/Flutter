class CatalogModel {
  static final items = [
    Item(
         "1",
         "Iphone 12 Pro",
         "Apple Iphone 12th Generation",
         999,
         "#33505a",
        "images/icon.png")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
