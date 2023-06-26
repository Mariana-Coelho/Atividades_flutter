import 'package:flutter/material.dart';
import 'resultado.dart';

class Pergunta {
  final String pergunta;
  final List<String> respostas;

  Pergunta({required this.pergunta, required this.respostas});
}

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  List<Resposta> respostas = [];
  int perguntaAtual = 0;

  List<Pergunta> perguntas = [
    Pergunta(
      pergunta: 'Qual é a sua cor favorita?',
      respostas: ['Preto', 'Branco', 'Verde'],
    ),
    Pergunta(
      pergunta: 'Qual é o seu animal favorito?',
      respostas: ['Cachorro', 'Gato', 'Elefante'],
    ),
     Pergunta(
      pergunta: 'Qual sua comida favorita?',
      respostas: ['Pizza', 'Lasanha', 'Strognoff'],
    ),
  ];

  void adicionarResposta(String resposta) {
    setState(() {
      respostas.add(Resposta(
        pergunta: perguntas[perguntaAtual].pergunta,
        resposta: resposta,
      ));
      proximaPergunta();
    });
  }

  void proximaPergunta() {
    setState(() {
      if (perguntaAtual < perguntas.length - 1) {
        perguntaAtual++;
      } else {
        exibirResultado();
      }
    });
  }

  void exibirResultado() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(respostas: respostas),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              perguntas[perguntaAtual].pergunta,
              style: TextStyle(fontSize: 20),
            ),
            for (String resposta in perguntas[perguntaAtual].respostas)
              ElevatedButton(
                child: Text(resposta),
                onPressed: () => adicionarResposta(resposta),
              ),
          ],
        ),
      ),
    );
  }
}
