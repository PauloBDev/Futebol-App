import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../add_pages/add_jogador_page.dart';
import '../populating/jogadores.dart';

class JogadoresPageAll extends StatefulWidget {
  const JogadoresPageAll({super.key});

  @override
  State<JogadoresPageAll> createState() => _JogadoresPageAllState();
}

class _JogadoresPageAllState extends State<JogadoresPageAll> {
  var _estado = 'All';
  final dopping = jogadores.where((e) => e.dopping == false).toList();
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
        // child: ListView.builder(
        //     itemCount: jogadores.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return jogadores.map((e){Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           child: ListTile(trailing: DateTime.now().difference(jogadores.date).inDays>200:const Icon(Icons.warning_sharp,color: Colors.red,),),
        //         ),
        //       );})
        //     }),
        child: ListView(
          children: jogadores.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
//                     ListTile(
//                       trailing: DateTime.now().difference(e.date).inDays < 200
//                           ? const Icon(
//                               Icons.dangerous,
//                               color: Colors.red,
//                             )
//                           : null,
//                       leading: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Image.asset(
//                           'images/profile_pic.png',
//                           width: 100,
//                           height: 100,
//                         ),
//                       ),
//                       subtitle: Container(
//                         margin: const EdgeInsets.all(5),
//                         child: Text(
//                           '''Nome: ${e.namejogador}
// Idade: ${e.idade}
// Clube: ${e.nameClube}
// Contratação: ${e.date}''',
//                         ),
//                       ),
//                     )
                    //por direito é por este padding depois do chieldren em cima
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
                        '''Nome: ${e.namejogador}
Idade: ${e.idade}
Clube: ${e.nameClube}
Contratação: ${e.date}''',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DateTime.now().difference(e.date).inDays > 10
                          ? const Icon(
                              Icons.dangerous,
                              color: Colors.red,
                              size: 50,
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ],
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

class SemanaButton extends StatelessWidget {
  final String text;
  final bool? selected;
  final VoidCallback onPressed;
  const SemanaButton(
    this.text, {
    Key? key,
    required this.onPressed,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        '$text \n____________',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color:
              selected == true ? Theme.of(context).colorScheme.primary : null,
          fontWeight: selected == true ? FontWeight.bold : null,
        ),
      ),
    );
  }
}
