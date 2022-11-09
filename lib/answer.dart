import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.black,
        ),
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}
