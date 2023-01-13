import 'dart:async';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:trabalho2/screens/learn_flutter_page.dart';
import 'package:trabalho2/screens/clubes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: SizedBox(
                  width: widthScreen - (widthScreen / 2),
                  height: 90,
                  child: Image.asset(
                    'images/football_clock_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Text(
                  formattedTime,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
              ),
              const Text(
                'Before the next game!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
          ElevatedButton(
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
      ),
    );
  }
}
