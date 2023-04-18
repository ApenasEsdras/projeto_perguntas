import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

// essa classe serve para comtrolar a ouitra classe PerguntaApp
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  // ignore: unused_element
  void _responder() {
    // addc novos estados
    setState(() {
      _perguntaSelecionada++;
    });
  }

  //  @override === decoration. Obriga  statiles a implementar, o bild
  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua  cor favorita',
        'respostas': ['preto', 'vermelho', 'azul', 'amarelo'],
      },
      {
        'texto': 'Qual é o seu animal favorito',
        'respostas': ['cachorro', 'calango', 'preá', 'jabuti'],
      },
      {
        'texto': 'Qual é o seu intrutor favorito',
        'respostas': ['Carla', 'Prego', 'Sol', 'Boca De Lodo'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
//componente↖ // ↖ widget === parâmetro
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          Resposta('Resposta1', _responder),
          Resposta('Resposta2', _responder),
          Resposta('Resposta3', _responder),
        ],
      ),
    ));
  }
}

// responsável por gerar os comandas básicos da aplicação (neste caso)
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  // PerguntaAppState === State<PerguntaApp>
  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
