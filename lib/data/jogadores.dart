import 'package:trabalho2/data/clubes.dart';

class Jogador extends Clubes {
  final String namejogador;
  final String? escolaridade;
  final String? nameCompetition;
  final int idade;
  final double? peso;
  final double? altura;
  final int passport;
  final DateTime date;
  final bool dopping;
  final DateTime? doppingdate;

  Jogador({
    nameClube,
    required this.namejogador,
    this.escolaridade,
    this.nameCompetition,
    required this.idade,
    this.peso,
    this.altura,
    required this.passport,
    required this.date,
    this.dopping = true,
    this.doppingdate,
  }) : super(nameClube: nameClube);

  @override
  String toString() {
    return '''ah''';
  }

  Map<int, Jogador> jogadores = <int, Jogador>{};
}

void adicionarJoagores() {
  Map<int, Jogador> jogadores = <int, Jogador>{};
  jogadores.addEntries([
    MapEntry(
        1,
        Jogador(
          namejogador: 'a',
          idade: 22,
          passport: 1423215412,
          date: DateTime.now(),
        )),
    MapEntry(
        2,
        Jogador(
          namejogador: 'b',
          idade: 23,
          passport: 14243262634,
          date: DateTime.now(),
        )),
  ]);
}
