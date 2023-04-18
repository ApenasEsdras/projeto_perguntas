import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text(texto),
        onPressed: () {},
      ),
    );
  }
}

/**
 *  TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.red,
          elevation: 15,
          shadowColor: Colors.green),
      child: const Text(
        'FlatButton Ativo',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: () {},
    );
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.amber,
        elevation: 15,
        shadowColor: Colors.purple,
      ),
      onPressed: null,
      child: const Text(
        'FlatButton Inativo',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
 */
