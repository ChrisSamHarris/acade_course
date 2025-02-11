import 'package:flutter/material.dart';

  final ButtonStyle answerStyle = OutlinedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    textStyle: const TextStyle(fontSize: 20),
    foregroundColor: Colors.white,
    side: BorderSide(color: Colors.black, width: 0.2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

// 8.05 on VIDEO 


class AnswerButton extends StatelessWidget {
  // AnswerButton(this.answerText, this.onTap, {super.key}); - positional arguements 
  const AnswerButton({super.key, 
  required this.answerText, 
  required this.onTap
  }); // named arguments 

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
              onPressed: onTap,
              style: answerStyle,
              child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}