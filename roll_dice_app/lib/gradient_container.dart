import 'package:flutter/material.dart';
import 'package:beautiful_app/text_style_hw.dart';

var colorStart = const Color.fromARGB(255, 155, 213, 230);
var colorEnd = const Color.fromARGB(255, 51, 143, 229);
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// class name should be CamelCaseUpper
class GradientContainer extends StatelessWidget {
  // named parameter - named arguements | positions arguements will be a comma seperated list
  // key - value wanted by parent (StatlessWidget)
  const GradientContainer({super.key});

  // @override makes it clear we're overriding the build method of stateless widget, not necessarily required
  // const - optimised and stored in memory for re-use
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
        child: StyleText(),
      ),
    );
  }
}
