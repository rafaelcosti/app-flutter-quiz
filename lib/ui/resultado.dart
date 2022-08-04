import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({
    required this.pontuacao,
    required this.reset,
    Key? key,
  }) : super(key: key);

  final int pontuacao;
  final void Function() reset;

  String get msgResultado {
    if (pontuacao < 8) {
      return "Parabéns voce gosta de Rock meia boca";
    } else if (pontuacao < 12) {
      return "Parabéns você curte um Rock";
    } else if (pontuacao < 16) {
      return "Parabéns você curte um Rock foda";
    } else {
      return "Parabéns você curte um Rock foda e tem bom gosto";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            textAlign: TextAlign.center,
            msgResultado,
            style: const TextStyle(
              fontSize: 30,
              textBaseline: TextBaseline.alphabetic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: reset,
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text("Reiniciar"),
        )
      ],
    );
  }
}
