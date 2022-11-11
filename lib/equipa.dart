import 'package:flutter/material.dart';
import 'package:trabalho2/clubes.dart';

class EquipaClube extends Clubes {
  String? namejogador;
  String? escolaridade;
  int? idade;
  double? peso;
  double? altura;
  int? diacontratacao;
  int? mescontratacao;
  int? anocontratacao;

  EquipaClube({
    name,
    this.namejogador,
    this.escolaridade,
    this.idade,
    this.peso,
    this.altura,
    this.diacontratacao,
    this.mescontratacao,
    this.anocontratacao,
  }) : super(name: name);

  @override
  String toString() {
    return '''ah''';
  }
}
