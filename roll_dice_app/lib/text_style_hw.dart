import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.textArg, {super.key});

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