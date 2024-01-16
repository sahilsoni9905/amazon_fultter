import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key, required this.ChageScreen});
  final void Function() ChageScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(213, 42, 157, 228),
              Color.fromARGB(186, 24, 4, 175),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: TweenAnimationBuilder(
            // basically used for the animation from start
            duration: const Duration(milliseconds: 1500),
            tween: Tween<double>(begin: 0, end: 230),
            builder: (context, size, Widget) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/amazon-png.png',
                      height: size,
                      width: size,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: ChageScreen,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Set border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 5, horizontal: 40), // Set padding
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text(
                        'Shop Now',
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
