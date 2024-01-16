import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahil_try/data/dummy_data.dart';
import 'package:sahil_try/models/categories.dart';
import 'package:sahil_try/widgets/product_list_widget.dart';

class topicList extends StatelessWidget {
  topicList({super.key, required this.temp, required this.addToFav});
  void Function(product) addToFav;

  List<product> temp;

  @override
  Widget build(context) {
    Widget content = ListView.builder(
        itemCount: temp.length,
        itemBuilder: (context, index) => ProductItem(
              Product: temp[index],
              addToFav: addToFav,
            ));
    if (temp.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh .... nothing here!!',
              style:
                  TextStyle(fontSize: 30, color: Color.fromARGB(179, 0, 0, 0)),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting a different one ',
              style:
                  TextStyle(fontSize: 20, color: Color.fromARGB(179, 6, 5, 5)),
            )
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Hurry!!'),
      ),
      body: content,
    );
  }
}
