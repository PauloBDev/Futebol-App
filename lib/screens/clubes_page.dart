import 'package:flutter/material.dart';
import 'package:trabalho2/add_pages/add_jogador_page.dart';
import 'package:trabalho2/populating/clubes.dart';
import 'package:trabalho2/screens/jogadores_page.dart';

import '../add_pages/add_clubes_page.dart';

class ClubesPage extends StatefulWidget {
  const ClubesPage({super.key});

  @override
  State<ClubesPage> createState() => _ClubesPageState();
}

class _ClubesPageState extends State<ClubesPage> {
  final double imageSize = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Clubes',
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
          children: clubes.map((e) {
            final String nameClube = e.nameClube;
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
                          width: imageSize / 2,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const JogadoresAdd_Page();
            },
          ));
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
    );
  }
}
