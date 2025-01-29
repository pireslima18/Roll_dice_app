import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{
  GradientContainer(this.colors, {super.key});

  List colors;

  void onPressed() {
  }

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
        // child: StyledText("Bem vindo ao app")
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              height: 200,
            ),
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 30
                ),
                padding: const EdgeInsets.only(
                  top: 20
                )

              ),
              child: Text("Roll Dice")
            )
          ],
        )
      ),
    );
  }
}
