import 'package:flutter/material.dart';
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
    List contractjogadores = [];
    jogadores.forEach((e) {
      contractjogadores.add(e.date);
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jogadores',
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
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SemanaButton(
                  'All',
                  onPressed: () => setState(
                    () => _estado = 'All',
                  ),
                  selected: _estado == 'All',
                ),
                SemanaButton(
                  'Dopping',
                  onPressed: () => setState(
                    () => _estado = 'Dopping',
                  ),
                  selected: _estado == 'Dopping',
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: jogadores.map((e) {
                  var contratacao = DateFormat("EEE,M/d/y").format(e.date);
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _estado == 'All'
                          ? Card(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'images/profile_pic.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Text(
                                      '''Nome: ${e.namejogador}\nIdade: ${e.idade}\nClube: ${e.nameClube}\nContratação: $contratacao''',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DateTime.now()
                                                .difference(e.date)
                                                .inDays >
                                            180
                                        ? const Icon(
                                            Icons.dangerous,
                                            color: Colors.red,
                                            size: 50,
                                          )
                                        : null,
                                  ),
                                ],
                              ),
                            )
                          : e.dopping == false
                              ? Card(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'images/profile_pic.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        child: Text(
                                          '''Nome: ${e.namejogador}\nClube: ${e.nameClube}\n\nPrecisa de testes de dopping!''',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DateTime.now()
                                                    .difference(e.date)
                                                    .inDays >
                                                180
                                            ? const Icon(
                                                Icons.dangerous,
                                                color: Colors.red,
                                                size: 50,
                                              )
                                            : null,
                                      )
                                    ],
                                  ),
                                )
                              : null);
                }).toList(),
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
