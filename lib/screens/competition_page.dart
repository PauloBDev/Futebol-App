import 'package:flutter/material.dart';
import 'package:trabalho2/populating/competitions.dart';
import 'package:trabalho2/screens/clubes_competitions_page.dart';
import '../add_pages/add_competition_page.dart';

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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
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
                                  return Clubes_Competition_Page(
                                      nameCompetition);
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Ink.image(
                              image: const AssetImage(
                                'images/profile_pic.png',
                              ),
                              width: imageSize,
                              height: imageSize,
                            ),
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
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CompetitionAdd_Page();
            },
          ));
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
    );
  }
}
