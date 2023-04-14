import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 1;

  void responder() {
    print('Pergunta respodida!');
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual é sua cor favorito?', 'Qual seu animal favorito'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}
