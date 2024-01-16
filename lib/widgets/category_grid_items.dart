import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sahil_try/data/dummy_data.dart';
import 'package:sahil_try/models/categories.dart';
import 'package:sahil_try/screens/product_list.dart';

class CategoryGridItems extends StatelessWidget {
  CategoryGridItems(
      {super.key, required this.Category, required this.addToFav});
  final category Category;
  void Function(product) addToFav;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        List<product> temp = [];
        for (final product in availableProducts) {
          if (product.id == Category.id) {
            temp.add(product);
          }
        }

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => topicList(
                    temp: temp,
                    addToFav: addToFav,
                  )),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Category.color.withOpacity(0.42),
              Category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Text(
              Category.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Category.imageAddress = Image(
              image: Category.imageAddress.image,
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
