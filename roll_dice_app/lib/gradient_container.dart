import 'package:flutter/material.dart';
import 'package:beautiful_app/text_style_hw.dart';

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

  void rollDice() {
    print("Rolling Dice");
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(height: 10),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    // padding: EdgeInsets.only(top: 20, bottom: 20),
                    side: const BorderSide(color: Colors.white, width: 0.5),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto")),
                child: const Text("Roll Dice")),
          ],
        ),
      ),
    );
  }
}
