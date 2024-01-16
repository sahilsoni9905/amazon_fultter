import 'package:flutter/material.dart';
import 'package:sahil_try/providers/cart_provider.dart';
import 'package:sahil_try/tabs.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<cartProvider>(
        create: (context) => cartProvider(),
      ),
    ], child: const TempWidget()),
  );
}
