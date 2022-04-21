import 'dart:math';

class Item {
  int id;
  String name;
  bool isDone;

  Item({
    required this.name,
    this.isDone = false,
  }) : this.id = Random().nextInt(1000);
}