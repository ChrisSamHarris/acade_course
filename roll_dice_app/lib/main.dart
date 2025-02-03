import 'package:flutter/material.dart';
import 'package:beautiful_app/gradient_container.dart';

const colorStart = Color.fromARGB(255, 155, 213, 230);
const colorEnd = Color.fromARGB(255, 51, 143, 229);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorStart:colorStart, colorEnd:colorEnd),
      ),
    ),
  );
}