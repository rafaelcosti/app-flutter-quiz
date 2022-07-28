import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  const Questao(this.pergunta, {Key? key}) : super(key: key);

  final String pergunta;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        pergunta,
        style: const TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
