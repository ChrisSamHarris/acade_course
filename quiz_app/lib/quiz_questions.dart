// return text widget - stateful with some text returned (just an example question)
import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {

  final ButtonStyle btnStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    side: BorderSide(color: Colors.black, width: 0.1),
  );
    final ButtonStyle answerStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    foregroundColor: Colors.white,
    side: BorderSide(color: Colors.black, width: 0.2),
  );
  final TextStyle questionStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What is the capital of France?",
                  style: questionStyle,
                ),
                const SizedBox(height: 40),
                Column(
                  children: ["A. Paris", "B. London", "C. Berlin"].map((answer) {
                  return OutlinedButton(
                    onPressed: () {},
                    style: answerStyle,
                    child: Text(answer),
                  );
                  }).toList(),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // logic to start the quiz
              print('next question pressed');
            },
            style: btnStyle,
            icon: Icon(Icons.skip_next),
            label: const Text("Next Question..."),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
