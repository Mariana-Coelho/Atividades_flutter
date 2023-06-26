import 'package:flutter/material.dart';

class Resposta {
  final String pergunta;
  final String resposta;

  Resposta({required this.pergunta, required this.resposta});
}

class Resultado extends StatelessWidget {
  final List<Resposta> respostas;

  Resultado({required this.respostas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: ListView.builder(
        itemCount: respostas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(respostas[index].pergunta),
            subtitle: Text(respostas[index].resposta),
          );
        },
      ),
    );
  }
}
