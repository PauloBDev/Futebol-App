import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });

    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teste'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionsIndex],
            ),
            Answer(
              _answerQuestions,
            ),
            Answer(
              _answerQuestions,
            ),
            Answer(
              _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
