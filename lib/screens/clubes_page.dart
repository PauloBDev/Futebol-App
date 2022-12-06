import 'package:flutter/material.dart';
import 'package:trabalho2/data/jogadores.dart';
import 'package:trabalho2/populating/clubes.dart';
import 'package:trabalho2/populating/jogadores.dart';
import 'package:trabalho2/screens/jogadores_page.dart';
import 'jogadores_page.dart';

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
          'Clubes da Liga #',
        ),
      ),
      body: ListView(
        children: clubes.map((e) {
          return Card(
            child: Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const JogadoresPage();
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
                      width:
                          (MediaQuery.of(context).size.width - imageSize) / 2,
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
    );
  }
}
