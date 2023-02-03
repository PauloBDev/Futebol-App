import 'package:flutter/material.dart';
import 'package:trabalho2/data/clubes.dart';

class ClubesAdd_Page extends StatefulWidget {
  const ClubesAdd_Page({super.key});

  @override
  State<ClubesAdd_Page> createState() => _ClubesAdd_PageState();
}

class _ClubesAdd_PageState extends State<ClubesAdd_Page> {
  final List<TextEditingController> _controllers =
      List.generate(2, (i) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Adicionar Clube")),
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
                    controller: _controllers[0],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Nome do Clube",
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
                      hintText: "Nome da Competição que pertence",
                      border: const OutlineInputBorder(),
                      suffix: IconButton(
                          onPressed: () {
                            _controllers[1].clear();
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      Clubes(
                          nameClube: _controllers[0].text,
                          nameCompetitionC: _controllers[1].text);
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
          ],
        ),
      ),
    );
  }
}
