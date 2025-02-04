import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home_page.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const colorStart = Color.fromARGB(255, 155, 213, 230);
const colorEnd = Color.fromARGB(255, 51, 143, 229);

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
            child: QuizHome(),
          ),
        ),
      ),
    );
  }
}
