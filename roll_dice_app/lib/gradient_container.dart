import 'package:flutter/material.dart';

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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 155, 213, 230),
            const Color.fromARGB(255, 51, 143, 229),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          "Hello World!",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}