import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trabalho2/data/jogadores.dart';

class JogadoresAdd_Page extends StatefulWidget {
  const JogadoresAdd_Page({super.key});

  @override
  State<JogadoresAdd_Page> createState() => _JogadoresAdd_PageState();
}

class _JogadoresAdd_PageState extends State<JogadoresAdd_Page> {
  final _textController = TextEditingController();
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
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Nome da Competição",
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Nome da Competição",
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _textController.clear();
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
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Nome da Competição",
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _textController.clear();
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
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Nome da Competição",
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _textController.clear();
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
                controller: _textController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Nome da Competição",
                  border: const OutlineInputBorder(),
                  suffix: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
