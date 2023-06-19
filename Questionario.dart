import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaAtual;
  final Function() onRespostaSelecionada;

  Questionario({
    required this.perguntas,
    required this.perguntaAtual,
    required this.onRespostaSelecionada,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];
    for (var resposta in perguntas[perguntaAtual]['respostas'] as List<String>) {
      respostas.add(
        Resposta(resposta, onRespostaSelecionada),
      );
    }

    return Column(
      children: [
        Questao(perguntas[perguntaAtual]['texto'].toString()),
        ...respostas,
      ],
    );
  }
}