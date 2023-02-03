import 'package:flutter/material.dart';

class JogadoresAdd_Page extends StatefulWidget {
  const JogadoresAdd_Page({super.key});

  @override
  State<JogadoresAdd_Page> createState() => _JogadoresAdd_PageState();
}

class _JogadoresAdd_PageState extends State<JogadoresAdd_Page> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Adicionar Jogador")),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/campo.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
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
