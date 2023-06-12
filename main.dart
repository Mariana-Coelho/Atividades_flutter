import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget{
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {

  var perguntaAtual = 0;
  var cor = Colors.white;

  final List<Map<String, Object>> questionario = [
    {
      "pergunta": "Cachorro tem quantas patas?",
      "respostas": ["1", "2", "3", "4", "5"]
    },
    {
      "pergunta": "Qual sua comida favorita?",
      "respostas": ["Lasanha", "pizza", "Arroz com galinha", "Canjica"]
    },
    {
      "pergunta": "Qual sua materia favorita?",
      "respostas": ["matemática", "Biologia", "Sociologia"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < questionario.length;
  }
  
  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context) {

    List<Widget> respostas = [];

    if (temPergunta) {
      for (var resposta in questionario[perguntaAtual]["respostas"] as List<String>) {
        respostas.add(
          Resposta(resposta, acao),
        );
      }
    }
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta ? Questao(questionario[perguntaAtual]["pergunta"].toString()) : Questao("Terminou"),
        ),
        body: temPergunta ? Column(
          children: [
            ...respostas,
          ],
        ) : Text("Resultado"),
      ),
    );
  }
}