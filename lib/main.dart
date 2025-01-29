import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

var colors = [
  Color.fromARGB(255, 217, 243, 251),
  Color.fromARGB(255, 165, 107, 107)
];
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 217, 243, 251),
          title: Center(
            child: Text(
              "Roll Dice App",
              style: TextStyle(
                fontSize: 25,
              ),
            )
          ),
        ),
        body: GradientContainer(colors),
      ),
    )
  );
}

