import 'package:flutter/material.dart';
import 'package:beautiful_app/text_style_hw.dart';
import 'package:beautiful_app/dice_roll.dart';

// final = var that will never change | best practice to be as restrictive as possible - ensure the var doesnt get overwritten elsewhere
// const can be used aswell, telling dart the var is a compile time constant - use const wherever it makes sense
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// class name should be CamelCaseUpper
// example: named arguments | default named arguements are optional
class GradientContainer extends StatelessWidget {
  // named parameter - named arguements | positions arguements will be a comma seperated list
  // key - value wanted by parent (StatlessWidget)
  const GradientContainer(
      {super.key, required this.colorStart, required this.colorEnd});

  final Color colorStart;
  final Color colorEnd;

  // @override makes it clear we're overriding the build method of stateless widget, not necessarily required
  // const - optimised and stored in memory for re-use
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            colorStart,
            colorEnd,
          ],
        ),
      ),
      child: Center(
        //child: StyleText("Hello World!"),
        //child: StyleText.hello(),
        // DiceRoll() is a stateful widget so the build method will need to be triggered again to update the UI
        child: DiceRoll()
      ),
    );
  }
}
