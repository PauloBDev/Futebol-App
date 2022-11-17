import 'dart:async';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:trabalho2/learn_flutter.dart';
import 'package:trabalho2/clubes_page.dart';

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
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Image.asset(
                    'images/football_clock_image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  formattedTime,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Text(
                    'Before the next game!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
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
      ),
    );
  }
}

void getTime() {}
