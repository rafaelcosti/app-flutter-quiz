import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  const Respostas(this.resposta, this.onSelect, {Key? key}) : super(key: key);

  final String resposta;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelect,
        style: style,
        child: Text(resposta),
      ),
    );
  }
}
