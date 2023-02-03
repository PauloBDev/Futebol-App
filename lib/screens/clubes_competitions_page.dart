import 'package:flutter/material.dart';
import '../populating/clubes.dart';
import 'jogadores_page.dart';

class Clubes_Competition_Page extends StatefulWidget {
  final String nameCompetitionC;
  const Clubes_Competition_Page(this.nameCompetitionC, {super.key});

  @override
  State<Clubes_Competition_Page> createState() =>
      _Clubes_Competition_PageState();
}

class _Clubes_Competition_PageState extends State<Clubes_Competition_Page> {
  final clubesDeCompetition = [];
  final double imageSize = 100;
  @override
  Widget build(BuildContext context) {
    clubes
        .where((e) => e.nameCompetitionC == widget.nameCompetitionC)
        .forEach((j) => clubesDeCompetition.add(j));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clubes da ${widget.nameCompetitionC}',
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
          children: clubesDeCompetition.map((e) {
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
                                  final String nameClube = e.nameClube;
                                  return JogadoresPage(nameClube);
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
                          width:
                              (MediaQuery.of(context).size.width - imageSize) /
                                  2,
                        ),
                        Text(
                          e.nameClube,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 32,
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
    );
  }
}
