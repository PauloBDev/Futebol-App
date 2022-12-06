import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalho2/data/jogadores.dart';
import '../populating/jogadores.dart';

class JogadoresPage extends StatefulWidget {
  const JogadoresPage({super.key});

  @override
  State<JogadoresPage> createState() => _JogadoresPageState();
}

class _JogadoresPageState extends State<JogadoresPage> {
  final List<Jogador> jogadores = [
    Jogador(
      nameClube: 'A',
      namejogador: 'a',
      escolaridade: '12ºAno',
      idade: 20,
      peso: 82,
      altura: 182,
      passport: 1422535436,
      date: DateTime.now(),
    ),
    Jogador(
      nameClube: 'B',
      namejogador: 'b',
      escolaridade: '12ºAno',
      idade: 21,
      peso: 74,
      altura: 160,
      passport: 14225355436,
      date: DateTime.now(),
    ),
    Jogador(
      nameClube: 'C',
      namejogador: 'c',
      escolaridade: '12ºAno',
      idade: 22,
      peso: 60,
      altura: 150,
      passport: 1422535543,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Equipa',
        ),
      ),
      body: ListView(
        children: jogadores.map((e) {
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
