import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalho2/populating/competitions.dart';
import 'package:trabalho2/screens/clubes_competitions_page.dart';
import 'package:trabalho2/screens/clubes_page.dart';

import '../populating/clubes.dart';

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  final double imageSize = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ligas',
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/campo.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: competitions.map((e) {
            final String nameCompetition = e.nameCompetition;
            return Card(
              child: Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Clubes_Competition_Page(nameCompetition);
                              },
                            ),
                          );
                        },
                        child: Ink.image(
                          image: const AssetImage(
                            'images/profile_pic.png',
                          ),
                          width: imageSize,
                          height: imageSize,
                        ),
                      ),
                      SizedBox(
                        width: imageSize / 2,
                      ),
                      Text(
                        e.nameCompetition,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
