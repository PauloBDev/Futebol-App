import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(3),
        child: Text(
          questionText,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.amber,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
