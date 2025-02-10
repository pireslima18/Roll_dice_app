import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
// import 'package:roll_dice_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{
  GradientContainer(this.colors, {super.key});

  final List colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            colors[0],
            colors[1],
          ]
        )
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
