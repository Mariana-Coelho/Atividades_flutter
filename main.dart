import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Fichas de Alunos'),
      ),
      body: FichasScreen(),
    ),
  ));
}

class FichasScreen extends StatelessWidget {
  final List<Aluno> alunos = [
    Aluno(
      imagem: 'https://png.pngtree.com/png-vector/20210301/ourmid/pngtree-cute-boy-happy-kid-character-4-png-image_2974229.jpg',
      nome: 'João Lucas',
      matricula: gerarMatricula(),
      escola: 'Integral',
      periodo: '2023 - 3º período',
    ),
    Aluno(
      imagem: 'https://png.pngtree.com/png-clipart/20190115/ourmid/pngtree-cartoon-hand-drawn-scissors-hand-meatball-head-shiny-png-image_349435.jpg',
      nome: 'Lia',
      matricula: gerarMatricula(),
      escola: 'Roberto Carneiro',
      periodo: '2023 - 2º período',
    ),
    Aluno(
      imagem: 'https://png.pngtree.com/png-vector/20190625/ourmid/pngtree-minion-prisionero-stuart-png-image_1511191.jpg',
      nome: 'Mathew',
      matricula: gerarMatricula(),
      escola: 'Joaquim Nabuco',
      periodo: '2023 - 1º período',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: alunos.length,
      itemBuilder: (context, index) {
        return FichaWidget(aluno: alunos[index]);
      },
    );
  }
}

class FichaWidget extends StatelessWidget {
  final Aluno aluno;

  FichaWidget({required this.aluno});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.network(
            aluno.imagem,
            width: 100,
            height: 100,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome: ${aluno.nome}'),
              Text('Matrícula: ${aluno.matricula.toString()}'),
              Text('Escola: ${aluno.escola}'),
              Text('Período: ${aluno.periodo}'),
            ],
          ),
        ],
      ),
    );
  }
}

class Aluno {
  final String imagem;
  final String nome;
  final int matricula;
  final String escola;
  final String periodo;

  Aluno({
    required this.imagem,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.periodo,
  });
}

// Função para gerar um número aleatório de matrícula
int gerarMatricula() {
  final random = Random();
  return random.nextInt(900000) + 100000;
}