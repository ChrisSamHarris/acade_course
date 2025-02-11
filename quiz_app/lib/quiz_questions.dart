// return text widget - stateful with some text returned (just an example question)
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question_data.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {

  var currentQuestionIndex = 0;
  answerQuestion() {
    if (currentQuestionIndex >= questions.length - 1) {
      print("No more questions");
      return;
    } else {
      setState(() {
        currentQuestionIndex++; 
      });
    }
  }

  final ButtonStyle btnStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    side: BorderSide(color: Colors.black, width: 0.1),
  );
  final TextStyle questionStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      currentQuestion.question,
                      style: questionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ...currentQuestion.getShuffledAnswers().map((answer) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: AnswerButton(answerText: answer, onTap: () {
                          print("Pressed: $answer");
                          answerQuestion();
                        }),
                      ),
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
