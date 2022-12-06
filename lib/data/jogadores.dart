import 'package:flutter/material.dart';
import 'package:trabalho2/data/clubes.dart';

class Jogador extends Clubes {
  final String namejogador;
  final String? escolaridade;
  final int idade;
  final double? peso;
  final double? altura;
  final int passport;
  final DateTime date;

  Jogador({
    nameClube,
    required this.namejogador,
    this.escolaridade,
    required this.idade,
    this.peso,
    this.altura,
    required this.passport,
    required this.date,
  }) : super(nameClube: nameClube);

  @override
  String toString() {
    return '''ah''';
  }
}
