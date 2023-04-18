import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

// essa classe serve para comtrolar a ouitra classe PerguntaApp
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    // addc novos estados
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  //  @override === decoration. Obriga  statiles a implementar, o bild
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é sua cor favorito?',
      'Qual seu animal favorito',
      'Seu time favorito'
    ];
    return MaterialApp(
        home: Scaffold(
//componente↖ // ↖ widget === parâmetro

      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]),
          ElevatedButton(
            onPressed: _responder,
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: _responder,
          ),
        ],
      ),
    ));
  }
}

// responsável por gerar os comandas básicos da aplicação (neste caso)
class PerguntaApp extends StatefulWidget {
  // PerguntaAppState === State<PerguntaApp>
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
