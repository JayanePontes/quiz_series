import 'package:flutter/material.dart';
import 'package:quiz_series/questao.dart';
import 'package:quiz_series/resposta.dart';

class FormsQuestions extends StatelessWidget {
  const FormsQuestions({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  bool get questionsOnSelect {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = questionsOnSelect
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map(
              (r) => Resposta(
                r['texto'] as String,
                () => responder(r['pontuacao'] as int),
              ),
            )
            .toList(),
      ],
    );
  }
}
