
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(ComponenteInicial());
}
class ComponenteInicial extends StatelessWidget{
  void eventoBotao(){
    print("Clicou");
  }
Widget build(BuildContext){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas e respostas"),
      ),
      body:Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: eventoBotao,
           child: Text("Enviar")),
           ElevatedButton(onPressed: eventoBotao,
           child: Text("Cancelar")),
            ElevatedButton(onPressed: eventoBotao,
           child: Text("Salvar")),
           Column(
            children: [
              Text("Aprendendo"),
              Text("Programação"),
              Text("Flutter"),
            ],
           )
        ],
       )
      )
    )
  );
}

}