import 'dart:math';
import 'package:flutter/material.dart';

// final so we dont keep generating the Random() class
final randomiser = Random();

// both DiceRoll and _DiceRollState are required to create a stateful widget 
class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
  
}

// using stateful widget = always works with two classes
class _DiceRollState extends State<DiceRoll> {
  var diceRoll = 1;

  void rollDice() { 
    // setState() rebuilds the widget for DiceRoll
    setState(() {
      diceRoll = randomiser.nextInt(6) + 1;
    });
    print("Changing image...");
  }

  // build requires a re-run once the activeDiceImage is updated - achieved via setState()
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceRoll.png',
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
      );
  }
}