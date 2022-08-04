import 'package:app_flutter_quiz/ui/questionario.dart';
import 'package:app_flutter_quiz/ui/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppFlutterQuizStateful());

class AppFlutterQuizState extends State<AppFlutterQuizStateful> {
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual seu estilo favirito?",
      "respostas": [
        {"pontuacao": 9, "texto": "Hard rock"},
        {"pontuacao": 7, "texto": "Progressivo"},
        {"pontuacao": 10, "texto": "Heavy metal"},
        {"pontuacao": 1, "texto": "Nacional"},
        {"pontuacao": 8, "texto": "Classic rock"},
      ]
    },
    {
      "texto": "Qual sua banda favorita?",
      "respostas": [
        {"pontuacao": 10, "texto": "Iron Maiden"},
        {"pontuacao": 8, "texto": "Metallica"},
        {"pontuacao": 6, "texto": "Lynyrd Skynyrd"},
        {"pontuacao": 2, "texto": "Poison"},
        {"pontuacao": 4, "texto": "Edguy"},
      ]
    },
    {
      "texto": "Qual destes festivais você já foi?",
      "respostas": [
        {"pontuacao": 1, "texto": "Lollapalooza"},
        {"pontuacao": 5, "texto": "Rock in Rio"},
        {"pontuacao": 10, "texto": "Wacken Open Air"},
        {"pontuacao": 8, "texto": "Woodstock"},
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
                  responder: _perguntaRespondida)
              : Resultado(
                  pontuacao: _pontuacaoTotal,
                  reset: _resetForm,
                )),
    );
  }

  void _resetForm() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _perguntaRespondida(int pontuacao) {
    if (temPergunta) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
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
