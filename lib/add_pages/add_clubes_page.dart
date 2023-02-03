import 'package:flutter/material.dart';

class ClubesAdd_Page extends StatefulWidget {
  const ClubesAdd_Page({super.key});

  @override
  State<ClubesAdd_Page> createState() => _ClubesAdd_PageState();
}

class _ClubesAdd_PageState extends State<ClubesAdd_Page> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Adicionar Clube")),
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
          ],
        ),
      ),
    );
  }
}
