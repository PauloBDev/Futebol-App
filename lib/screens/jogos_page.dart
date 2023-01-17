import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../populating/clubes.dart';
import 'clubes_competitions_page.dart';
import 'clubes_page.dart';
import 'jogadores_page.dart';

class JogosPage extends StatefulWidget {
  const JogosPage({super.key});

  @override
  State<JogosPage> createState() => _JogosPageState();
}

class _JogosPageState extends State<JogosPage> {
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
                                return JogadoresPage(nameClube);
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
            );
          }).toList(),
        ),
      ),
    );
  }
}
