import 'package:flutter/material.dart';
import 'package:sahil_try/data/dummy_data.dart';
import 'package:sahil_try/models/categories.dart';
import 'package:sahil_try/providers/cart_provider.dart';
import 'package:sahil_try/screens/product_list.dart';
import 'package:sahil_try/widgets/category_grid_items.dart';
import 'package:sahil_try/widgets/product_list_widget.dart';
import 'package:provider/provider.dart';

List<product> myFavorites = [];

class Grids extends StatefulWidget {
  Grids({super.key});

  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  void addedToFav(product Product) {
    setState(() {
      if (myFavorites.contains(Product) == false) {
        myFavorites.add(Product);
        showSnackBar('Item added to favorites');
      } else {
        myFavorites.remove(Product);
        showSnackBar('Item removed from favorites');
      }
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category!!'),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(210, 49, 99, 206),
                Color.fromARGB(237, 7, 83, 150),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Support corner!!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Color.fromARGB(232, 143, 74, 223),
                  height: 25,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    size: 40,
                  ),
                  title: Text(
                    'Favourites!',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => topicList(
                                temp: myFavorites,
                                addToFav: addedToFav,
                              )),
                    );
                  },
                ),
                Consumer<cartProvider>(
                  builder: (context, cartModel, child) {
                    return ListTile(
                      leading: Icon(Icons.shopping_cart, size: 40),
                      title:
                          Text('Order in Cart', style: TextStyle(fontSize: 20)),
                      onTap: () {
                        // Navigate to the topicList page using Navigator
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => topicList(
                                temp: cartModel.myCart, addToFav: addedToFav),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final i in availableCategories)
            CategoryGridItems(
              Category: i,
              addToFav: addedToFav,
            ),
        ],
      ),
    );
  }
}
