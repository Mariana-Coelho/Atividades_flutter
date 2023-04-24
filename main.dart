import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  var perguntas = [
    "Qual sua serie favorita?",
    "Qual sua rede social favorita?",
    "Qual sua cor favorita?",
    "Qual sua comida favorita?"
  ];

  void eventoBotao() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Atividade 3 - Mariana Coelho"),
          ),
          body: Column(
            children: [
              Text(perguntas[contador]),
              ElevatedButton(onPressed: eventoBotao, child: Text("Opção 1")),
              ElevatedButton(onPressed: eventoBotao, child: Text("Opção 2")),
              ElevatedButton(onPressed: eventoBotao, child: Text("Opção 3")),
            ],
          )),
    );
  }
}
