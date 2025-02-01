import 'package:flutter/material.dart';

// dart = type safe language | typically values are of multiple types | dynamic type 
// e.g. "hello world" -> String| object 
// 29 -> int | num | object

void main() {
  // const - helps Dart optimise the runtime performance of the application: Stores internally on the memory of the device
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 107, 194, 235),
        body: Center(
          child: Text("Hello World!"),

        ),
      ),
    ),
  );
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

// // ctrl + SPACE = to get the suggestions
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Roll Dice', style: TextStyle(color: Colors.cyan, fontSize: 24, fontWeight: FontWeight.bold)),
//         ),
//         body: Center(
//           child: Text('Roll Dice'),
//         ),
//       ),
//     );
//   }
// }

// positional arguements in dart
void add({num1, num2}) {
  num1 + num2;
}

void demo() {
  add(num2: 5, num1: 2);
}

void addOptional(a, [b = 5]) {
  // b is optional, 5 will be used as a default value
  a + b;
}

void demoTwo() {
  addOptional(10); // b would still be 5 because it's not overwritten
  addOptional(10, 6); // here, b would be 6
}
