import 'package:flutter/material.dart';
import 'package:quiz_app/quizHome.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.colorStart, required this.colorEnd});

  final Color colorStart;
  final Color colorEnd;

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
        child: QuizHome(),
      ),
    );
  }
}
