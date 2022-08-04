import 'package:app_flutter_quiz/ui/questao.dart';
import 'package:app_flutter_quiz/ui/respostas.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? respostas;
    List<Widget>? widgets;

    if (temPergunta) {
      respostas = perguntas[perguntaSelecionada].cast()["respostas"];
      widgets = respostas
          ?.map((resp) => Respostas(
                resp.cast()["texto"],
                () => responder(resp.cast()["pontuacao"]),
              ))
          .toList();
    }

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...?widgets,
      ],
    );
  }

  bool get temPergunta {
    return perguntaSelecionada < (perguntas.length);
  }
}
