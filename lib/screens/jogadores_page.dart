import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../populating/jogadores.dart';

class JogadoresPage extends StatefulWidget {
  final String nameClube;
  const JogadoresPage(this.nameClube, {super.key});

  @override
  State<JogadoresPage> createState() => _JogadoresPageState();
}

class _JogadoresPageState extends State<JogadoresPage> {
  List jogadoresDeClube = [];
  List jogadoresDeCompetition = [];
  @override
  Widget build(BuildContext context) {
    jogadores
        .where((e) => e.nameClube == widget.nameClube)
        .forEach((j) => jogadoresDeClube.add(j));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Equipa',
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
          children: jogadoresDeClube.map((e) {
            var contratacao = DateFormat("EEE,M/d/y").format(e.date);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'images/profile_pic.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        '''Nome: ${e.namejogador}
Idade: ${e.idade}
Clube: ${e.nameClube}
Contratação: $contratacao''',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DateTime.now().difference(e.date).inDays > 180
                          ? const Icon(
                              Icons.dangerous,
                              color: Colors.red,
                              size: 50,
                            )
                          : null,
                    ),
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
