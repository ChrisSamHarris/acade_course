import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home_page.dart';
import 'package:quiz_app/quiz_questions.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const colorStart = Color.fromARGB(255, 155, 213, 230);
const colorEnd = Color.fromARGB(255, 51, 143, 229);

class QuizState extends StatefulWidget {
  const QuizState({super.key});

  @override
  State<QuizState> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizState> {
  // Widget? letting the PC know that activeScreen can also be null, still initialises the property
  // Widget? activeScreen;

  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  @override
  void initState() {
    // this is a replacement for initial "Widget activeScreen = QuizHome(switchScreen);" - activeScreen still needs to be initialised
    super.initState();
    activeScreen = 'start-screen';
    // activeScreen = QuizHome(switchScreen);
    // Addressining - The instance member 'switchScreen' can't be accessed in an initializer.
    // method to add to state classes initialising state
  }

  void switchScreen() {
    // render content conditionally -> Requires lifting the state up
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    print("Answeres selected: $selectedAnswers");
  }

  @override
  Widget build(context) {
    // terniary expression - one value if a condition is met, another condition if a value is not met
    // final screenWidget = activeScreen == 'start-screen'
    //             ? QuizHome(switchScreen)
    //             : const QuizQuestions();

    Widget screenWidget = QuizHome(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuizQuestions(onSelectAnswer: chooseAnswer,);
    }

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
            // terniary expression - one value if a condition is met, another condition if a value is not met
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
