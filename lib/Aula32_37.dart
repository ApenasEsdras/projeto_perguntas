/*
Em base o programa funciona a base de componentes e widgets]
==
widgets Visíveis VS invisíveis:
  Visíveis: Entradas & saídas  Invisíveis
  Aquilo que o usuário ver   X  Componentes q provem uma estatura para a aplicação
                ----- CONTAINER -----
  

*/

import 'package:flutter/material.dart';

// esse main serve para poder dar o rum no projeto.
// ele chama a classe e a classe é executada de forma global. (ela q faz a bagaça funcionar)
main() => runApp(PerguntaApp());

// responsável por gerar os comandas básicos da aplicação (neste caso)
class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 1;

// método &&|| function
  void responder() {
    print('btn1');
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print('Btn4');
    };
  }

//  @override === decoration. Obriga  statiles a implementar, o bild
  @override
  Widget build(BuildContext context) {
    // constante Final
    final perguntas = ['Qual é sua cor favorito?', 'Qual seu animal favorito'];

//  MaterialApp == widget que retorna os valores das columns
// "MaterialApp" é filho do " PerguntaApp".
    return MaterialApp(
        home: Scaffold(
//componente↖ // ↖ widget === parâmetro

      appBar: AppBar(
        title: Text('Perguntas'),
      ),

      // O COLUMN serve p/ agrupar elementos  em listas
      body: Column(
        children: [
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: () {
              print('Btn 2');
              perguntaSelecionada++;
              print(perguntaSelecionada);
            },
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: () => {
              print('Bnt 3'),
              perguntaSelecionada++,
              print(perguntaSelecionada)
            },
          ),
          ElevatedButton(
            child: Text('Resposta 4'),
            onPressed: funcaoQueRetornaOutraFuncao(),
          ),
        ],
      ),
    ));
  }
}
