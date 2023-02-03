import 'package:flutter/material.dart';
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
Contratação: ${e.date}''',
                      ),
                    ),
                    ListTile(
                      trailing: DateTime.now().difference(e.date).inDays < 200
                          ? const Icon(
                              Icons.dangerous,
                              color: Colors.red,
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
