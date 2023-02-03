import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trabalho2/data/jogadores.dart';
import '../add_pages/add_jogador_page.dart';
import '../populating/jogadores.dart';

class JogadoresPageAll extends StatefulWidget {
  const JogadoresPageAll({super.key});

  @override
  State<JogadoresPageAll> createState() => _JogadoresPageAllState();
}

class _JogadoresPageAllState extends State<JogadoresPageAll> {
  @override
  Widget build(BuildContext context) {
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
