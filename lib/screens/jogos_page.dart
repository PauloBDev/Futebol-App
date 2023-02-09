import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trabalho2/populating/jogos.dart';

class JogosPage extends StatefulWidget {
  const JogosPage({super.key});

  @override
  State<JogosPage> createState() => _JogosPageState();
}

class _JogosPageState extends State<JogosPage> {
  final double imageSize = 100;

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jogos',
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
          children: jogos.map((e) {
            final data = DateFormat.MMMEd().format(e.gameStarts);
            return SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 1,
                        child: Text(
                          data,
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            e.homeTeam,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(
                            width: screen / 4,
                          ),
                          const Text(
                            "VS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(
                            width: screen / 4,
                          ),
                          Text(
                            e.outsiderTeam,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
