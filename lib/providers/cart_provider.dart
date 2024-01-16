import 'package:flutter/material.dart';
import 'package:sahil_try/models/categories.dart';

class cartProvider extends ChangeNotifier {
  List<product> myCart = [];
  void addedToCart(product Product) {
    if (myCart.contains(Product) == false) {
      myCart.add(Product);
    } else {
      myCart.remove(Product);
    }
  }
}
