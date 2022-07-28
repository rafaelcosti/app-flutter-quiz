import 'package:app_flutter_quiz/ui/questao.dart';
import 'package:app_flutter_quiz/ui/respostas.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppFlutterQuizStateful());

class AppFlutterQuizState extends State<AppFlutterQuizStateful> {
  int _perguntaSelecionada = 0;
  final List<String> perguntas = [
    "Qual sua cor favorita?",
    "Qual seu animal favorito?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Respostas('Resposta 1', _perguntaRespondida),
            Respostas("Resposta 2", _perguntaRespondida),
            Respostas("Resposta 3", _perguntaRespondida),
          ],
        ),
      ),
    );
  }

  void _perguntaRespondida() {
    setState(() {
      _perguntaSelecionada++;
    });
    print("E laia");
  }
}

class AppFlutterQuizStateful extends StatefulWidget {
  const AppFlutterQuizStateful({Key? key}) : super(key: key);

  @override
  AppFlutterQuizState createState() {
    return AppFlutterQuizState();
  }
}
