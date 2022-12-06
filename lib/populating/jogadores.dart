import 'package:trabalho2/data/jogadores.dart';

void jogadores() {
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
