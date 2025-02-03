import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.textArg, {super.key});

  // provide a default value with .hello()
  const StyleText.hello({super.key}) : textArg = "Hello World!";

  // initialise the textArg parameter
  final String textArg;

  @override
  Widget build(BuildContext context) {
    return Text(
        textArg,
        style: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      );
  }
}

// Text("Hello World!",
//           style: TextStyle(
//               color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
//         )