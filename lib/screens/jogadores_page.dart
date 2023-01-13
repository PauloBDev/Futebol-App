import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalho2/data/jogadores.dart';
import '../populating/jogadores.dart';

class JogadoresPage extends StatefulWidget {
  final String nameClube;
  const JogadoresPage(this.nameClube, {super.key});

  @override
  State<JogadoresPage> createState() => _JogadoresPageState();
}

class _JogadoresPageState extends State<JogadoresPage> {
  List jogadoresDeClube = [];
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
      body: ListView(
        children: jogadoresDeClube.map((e) {
          return Card(
            child: Row(
              children: [
                Image.asset(
                  'images/profile_pic.png',
                  width: 100,
                  height: 100,
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
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
