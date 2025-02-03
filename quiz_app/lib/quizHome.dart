import 'package:flutter/material.dart';

// both DiceRoll and _DiceRollState are required to create a stateful widget
class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() {
    return _QuizHomeState();
  }
}

// using stateful widget = always works with two classes
class _QuizHomeState extends State<QuizHome> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      foregroundColor: Colors.black,
      backgroundColor: Colors.white);

  @override
  Widget build(context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            const SizedBox(height: 40), // Reduce space at the top
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/quiz-logo.png',
                      width: constraints.maxWidth *
                          0.8, // 80% of the available width
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Learn Flutter the fun way!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('start quiz pressed');
                },
                style: style,
                child: const Text("Start Quiz")),
            const SizedBox(height: 40),
          ],
        );
      },
    );
  }
}
