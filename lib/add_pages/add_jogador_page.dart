import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trabalho2/data/jogadores.dart';

class JogadoresAdd_Page extends StatefulWidget {
  const JogadoresAdd_Page({super.key});

  @override
  State<JogadoresAdd_Page> createState() => _JogadoresAdd_PageState();
}

class _JogadoresAdd_PageState extends State<JogadoresAdd_Page> {
  final List<TextEditingController> _controllers =
      List.generate(9, (i) => TextEditingController());
  var listaTexto = [
    "Nome da competição",
    "Nome do Clube",
    "Nome do Jogador",
    "Escolaridade",
    "Idade",
    "Peso",
    "Altura",
    "Passport",
    "Data de contratação (dd-MM-yyyy)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Adicionar Jogador")),
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
          children: [
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[0],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[0],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[0].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[1],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[1],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[1].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[2],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[2],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[2].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[3],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[3],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[3].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    controller: _controllers[4],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: listaTexto[4],
                      border: const OutlineInputBorder(),
                      suffix: IconButton(
                          onPressed: () {
                            _controllers[4].clear();
                          },
                          icon: const Icon(Icons.clear)),
                    ))),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[5],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[5],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[5].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[6],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[6],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[6].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[7],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[7],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[7].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllers[8],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: listaTexto[8],
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _controllers[8].clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  Jogador(
                    nameClube: _controllers[0].text,
                    namejogador: _controllers[2].text,
                    escolaridade: _controllers[3].text,
                    nameCompetition: _controllers[1].text,
                    idade: int.parse(_controllers[4].text),
                    peso: double.parse(_controllers[5].text),
                    altura: double.parse(_controllers[6].text),
                    passport: int.parse(_controllers[7].text),
                    date: DateTime.parse(_controllers[8].text),
                  );
                });
              },
              color: Colors.lightGreen[900],
              child: const Text(
                "Adicionar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
