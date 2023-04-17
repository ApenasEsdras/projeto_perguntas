/*
Conceito de estado:
  GERAL
    . O Estado são dados/informações utilizadas pelo APP.
  APP
    . Usuário autenticado
    . produto Carregado ...
  WIDGET
    . valor de campo de entrada
    . o spinner de carregamento está sendo exibido?

    ===

Stateless VS Statefull

STATELESS
  Parãmetros (Dodos de Entrada) => Widget => Renderiza a UI
    ↖ esses dados podem mudar(Externamente) // ↖ (Re)-renderiza qnd os parãmetros mudam.

STATEFULL
  Parãmentros (Dados de Entrada) => Widget + Estado Interno => Rederização da UI
   ↖ esses dados podem mudar(Externamente) //                     ↖ (Re)-renderiza qnd os parâmetros ou estado Interno  mudam.
 */

import 'package:flutter/material.dart';

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
          Text(perguntas[_perguntaSelecionada]),
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
