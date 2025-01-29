import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{
  GradientContainer(this.colors, {super.key});

  List colors;

  @override
  Widget build(context) {
    return Container(
      // color: Color.fromARGB(255, 107, 140, 165),
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
        child: StyledText("Bem vindo ao app")
      ),
    );
  }
}
