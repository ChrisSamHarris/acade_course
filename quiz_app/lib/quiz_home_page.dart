import 'package:flutter/material.dart';

final ButtonStyle btnStyle = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 20),
  foregroundColor: Colors.black,
  backgroundColor: Colors.white,
  side: BorderSide(color: Colors.black, width: 0.1),
);

class QuizHome extends StatelessWidget {
  // added the activeScreen from the QuizState class as a positional arguement so the func can be called from here
  // use functions as values and pass functions as values
  const QuizHome(this.switchScreenFunc, {super.key});

  // this function arguement is redundant with the terniary expression, but keep as reference 
  final void Function() switchScreenFunc;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40), // Reduce space at the top
          // Expanded expands the child of Column so that the child fills the available space
          Expanded(
            child: Column(
              // column = main axis = vertical axis | row is horizontal
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/quiz-logo.png',
                    //width: constraints.maxWidth *0.8, // 80% of the available width (can be used with LayoutBuilder as the parent of Center)
                    fit: BoxFit.contain,
                    color: const Color.fromARGB(170, 255, 255, 255),
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
          ElevatedButton.icon(
            onPressed: () {
              switchScreenFunc();
              print('start quiz pressed');
            },
            style: btnStyle,
            icon: Icon(Icons.play_arrow),
            label: const Text("Start Quiz"),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
