import 'package:flutter/material.dart';

class category {
  category(
      {required this.id,
      required this.color,
      required this.imageAddress,
      required this.title});
  final String id;
  String title;
  Color color;
  Image imageAddress;
}

class product {
  product(
      {required this.id,
      required this.imageAddress,
      required this.price,
      required this.product_name});
  final String id;
  String product_name;
  Image imageAddress;
  int price;
}
