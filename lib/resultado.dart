import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final void Function() _quandoReiniciaQuestionario;
// conponetes de satateles == de estado  dan-se comm final
  final int pontuacao;
  const Resultado(this.pontuacao, this._quandoReiniciaQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Voçê é bom!';
    } else if (pontuacao < 16) {
      return 'Impresionate!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(148, 120, 133, 255),
            ),
            padding: const EdgeInsets.all(16),
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                fraseResultado,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 120,
          height: 80,
          child: TextButton(
            onPressed: _quandoReiniciaQuestionario,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 6, 172, 255)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Text(
              'Reiniciar?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
