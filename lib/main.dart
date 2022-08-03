import 'package:app_flutter_quiz/ui/questionario.dart';
import 'package:app_flutter_quiz/ui/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppFlutterQuizStateful());

class AppFlutterQuizState extends State<AppFlutterQuizStateful> {
  int _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual seu estilo favirito?",
      "respostas": [
        {"nota": 9, "texto": "Hard rock"},
        {"nota": 7, "texto": "Progressivo"},
        {"nota": 10, "texto": "Heavy metal"},
        {"nota": 1, "texto": "Nacional"},
        {"nota": 8, "texto": "Classic rock"},
      ]
    },
    {
      "texto": "Qual sua banda favorita?",
      "respostas": [
        {"nota": 10, "texto": "Iron Maiden"},
        {"nota": 8, "texto": "Metallica"},
        {"nota": 6, "texto": "Lynyrd Skynyrd"},
        {"nota": 2, "texto": "Poison"},
        {"nota": 4, "texto": "Edguy"},
      ]
    },
    {
      "texto": "Qual destes festivais você já foi?",
      "respostas": [
        {"nota": 1, "texto": "Lollapalooza"},
        {"nota": 5, "texto": "Rock in Rio"},
        {"nota": 10, "texto": "Wacken Open Air"},
        {"nota": 8, "texto": "Woodstock"},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: temPergunta
              ? Questionario(
                  perguntaSelecionada: _perguntaSelecionada,
                  perguntas: _perguntas,
                  responser: _perguntaRespondida)
              : const Resultado()),
    );
  }

  void _perguntaRespondida() {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPergunta {
    return _perguntaSelecionada < (_perguntas.length);
  }
}

class AppFlutterQuizStateful extends StatefulWidget {
  const AppFlutterQuizStateful({Key? key}) : super(key: key);

  @override
  AppFlutterQuizState createState() {
    return AppFlutterQuizState();
  }
}
