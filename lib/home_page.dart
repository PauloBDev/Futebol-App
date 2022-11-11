import 'package:flutter/material.dart';
import 'package:trabalho2/learn_flutter.dart';
import 'package:trabalho2/clubes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  },
                ),
              );
            },
            child: const Text('Learn'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const ClubesPage();
                },
              ),
            );
          },
          child: const Text('Clubes'),
        ),
      ],
    );
  }
}
