import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';
// import 'minhaSolucao.dart';

main() => runApp(const PerguntaApp());

// essa classe serve para comtrolar a ouitra classe PerguntaApp
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua  cor favorita',
      'respostas': [
        {'texto': 'preto', 'pontuacao': 10},
        {'texto': 'vermelho', 'pontuacao': 5},
        {'texto': 'azul', 'pontuacao': 3},
        {'texto': 'amarelo', 'pontuacao': 6},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'respostas': [
        {'texto': 'Prea', 'pontuacao': 10},
        {'texto': 'Jumento', 'pontuacao': 5},
        {'texto': 'Polvo', 'pontuacao': 3},
        {'texto': 'lagosta', 'pontuacao': 6},
      ],
    },
    {
      'texto': 'Qual é o seu intrutor favorito',
      'respostas': [
        {'texto': 'Marcos', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 5},
        {'texto': 'Lara', 'pontuacao': 3},
        {'texto': 'Júlia', 'pontuacao': 6},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciaQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quandoResponder: _responder)
          : Resultado(_pontuacaoTotal, _reiniciaQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
