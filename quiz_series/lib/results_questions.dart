import 'package:flutter/material.dart';

class ResultsQuestions extends StatelessWidget {
  const ResultsQuestions(this.pontuacao, this.reiniciarQuiz);

  final int pontuacao;
  final void Function() reiniciarQuiz;

  String get result {
    if (pontuacao <= 5) {
      return 'Vish, precisa maratonar novamente';
    } else if (pontuacao <= 7) {
      return 'Parabéns!! Maratonou recentemente né, rs';
    } else if (pontuacao > 7) {
      return 'Muito bem!! Você é uma Greys Nata!!';
    } else {
      return 'lala';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 100,
        ),
        Text(
          '$result!\n Sua pontuação foi de $pontuacao',
          style: const TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: reiniciarQuiz,
          style: const ButtonStyle(),
          child: const Text('Reiniciar Quiz'),
        ),
      ],
    );
  }
}
