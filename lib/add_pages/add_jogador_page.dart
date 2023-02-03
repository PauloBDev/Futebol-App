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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Nome do Jogador",
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
                      hintText: "Nome do Clube que pertence",
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
                      hintText: "Escolaridade",
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
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Idade",
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
                      hintText: "Peso",
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
                      hintText: "Altura",
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
                      hintText: "Passport",
                      border: const OutlineInputBorder(),
                      suffix: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
