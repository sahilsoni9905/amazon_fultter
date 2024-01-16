import 'package:flutter/material.dart';
import 'package:sahil_try/models/categories.dart';
import 'package:sahil_try/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:sahil_try/screens/grid_screen.dart';

class ProductDeatails extends StatefulWidget {
  ProductDeatails({Key? key, required this.Product, required this.addToFav});

  final product Product;
  final void Function(product) addToFav;

  @override
  _ProductDeatailsState createState() => _ProductDeatailsState();
}

class _ProductDeatailsState extends State<ProductDeatails> {
  bool isexpanded = false;
  Color col = Colors.white;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.Product.product_name),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.addToFav(widget.Product);
              });
            },
            icon: Icon(Icons.favorite,
                color: myFavorites.contains(widget.Product)
                    ? Colors.red
                    : Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(201, 109, 238, 227),
              Color.fromARGB(224, 168, 91, 235),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Consumer<cartProvider>(builder: (context, cartModel, child) {
            return Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: widget.Product.imageAddress.image,
                  fit: BoxFit.cover,
                  height: 400,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Click below to add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      cartModel.addedToCart(widget.Product);
                      isexpanded = !isexpanded;
                    });
                  },
                  child: AnimatedContainer(
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: isexpanded
                            ? BorderRadius.circular(50.0)
                            : BorderRadius.circular(0.0),
                        color: isexpanded
                            ? Colors.green
                            : Color.fromARGB(226, 140, 62, 236),
                      ),
                      duration: Duration(milliseconds: 1000),
                      height: isexpanded ? 50 : 70.0,
                      width: isexpanded ? 200.0 : 70.0,
                      child: Row(
                        children: [
                          Icon(
                            isexpanded ? Icons.check : Icons.shopping_cart,
                            size: 60,
                          ),
                          isexpanded
                              ? Text(
                                  'Added to cart !',
                                  style: TextStyle(fontSize: 20),
                                )
                              : Text(''),
                        ],
                      )),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
