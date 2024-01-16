import 'package:flutter/material.dart';
import 'package:sahil_try/models/categories.dart';
import 'package:sahil_try/screens/product_description.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.Product, required this.addToFav});
  final product Product;
  void Function(product) addToFav;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDeatails(
                        Product: Product,
                        addToFav: addToFav,
                      )),
            );
          },
          child: Stack(
            children: [
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: Product.imageAddress.image,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Color.fromARGB(199, 0, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 44),
                  child: Column(
                    children: [
                      Text(
                        Product.product_name,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Color.fromARGB(255, 253, 253, 253),
                          ),
                          Text(
                            Product.price.toString(),
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
