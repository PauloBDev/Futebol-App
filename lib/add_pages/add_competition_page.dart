import 'package:flutter/material.dart';

class CompetitionAdd_Page extends StatefulWidget {
  const CompetitionAdd_Page({super.key});

  @override
  State<CompetitionAdd_Page> createState() => _CompetitionAdd_PageState();
}

class _CompetitionAdd_PageState extends State<CompetitionAdd_Page> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("Adicionar Competição")),
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
            SizedBox(
              height: screenH / 3,
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
      ),
    );
  }
}
