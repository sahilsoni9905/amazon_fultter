import 'package:flutter/material.dart';
import 'package:sahil_try/screens/grid_screen.dart';
import 'package:sahil_try/screens/start_screen.dart';

class TempWidget extends StatefulWidget {
  const TempWidget({super.key});
  @override
  _TempWidgetState createState() => _TempWidgetState();
}

class _TempWidgetState extends State<TempWidget> {
  // Add your state variables and methods here

  Widget? screen;
  var status = "start_screen";
  void change_grid_screen() {
    setState(() {
      status = 'grid_option';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (status == "start_screen") {
      screen = startScreen(
        ChageScreen: change_grid_screen,
      );
    } else if (status == 'grid_option') {
      screen = Grids();
    }

    return MaterialApp(
      home: screen,
    );
  }
}
