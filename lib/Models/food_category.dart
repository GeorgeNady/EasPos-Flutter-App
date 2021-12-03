
import 'package:flutter/cupertino.dart';

class FoodCategory{
  String id;
  String name;
  List<FoodItem> foodItems;

  FoodCategory({
    @required this.name,
    @required this.id,
    @required this.foodItems,
});
}

class FoodItem{
  String id;
  String image;
  String name;
  double price;

  FoodItem({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.image,
});

}