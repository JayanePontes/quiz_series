import 'package:flutter/material.dart';
import 'package:quiz_series/forms_questions.dart';
import 'package:quiz_series/results_questions.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;

  final perguntas = const [
    {
      'texto': 'Onde Meredith e Derek se conheceram?',
      'resposta': [
        {'texto': 'Hospital', 'pontuacao': 0},
        {'texto': 'Elevador', 'pontuacao': 0},
        {'texto': 'Bar', 'pontuacao': 1},
        {'texto': 'Barca', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual o nome da primeira esposa de Richard Webber?',
      'resposta': [
        {'texto': 'Elis', 'pontuacao': 0},
        {'texto': 'Cindy', 'pontuacao': 0},
        {'texto': 'Adele', 'pontuacao': 1},
        {'texto': 'Molly', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quantos nomes o hospital já teve?',
      'resposta': [
        {'texto': '5', 'pontuacao': 0},
        {'texto': '3', 'pontuacao': 1},
        {'texto': '4', 'pontuacao': 0},
        {'texto': '2', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quem operou a mão de Derek depois do trauma do acidente?',
      'resposta': [
        {'texto': 'Callie Torres', 'pontuacao': 1},
        {'texto': 'Preston Burke', 'pontuacao': 0},
        {'texto': 'Mark Sloan', 'pontuacao': 0},
        {'texto': 'Richard Webber', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quem deu autorização para amputar a perna de Arizona?',
      'resposta': [
        {'texto': 'Arizona', 'pontuacao': 0},
        {'texto': 'Krev', 'pontuacao': 0},
        {'texto': 'Callie', 'pontuacao': 1},
        {'texto': 'Sloan', 'pontuacao': 0},
      ],
    },
    {
      'texto':
          'Depois de quantos dias os aparelhos de Mark Sloan foram desligados?',
      'resposta': [
        {'texto': '60', 'pontuacao': 0},
        {'texto': '45', 'pontuacao': 0},
        {'texto': '15', 'pontuacao': 0},
        {'texto': '30', 'pontuacao': 1},
      ],
    },
    {
      'texto':
          'Quem foi a pessoa que não queria aceitar a proposta do processo contra a empresa aérea??',
      'resposta': [
        {'texto': 'Callie', 'pontuacao': 0},
        {'texto': 'Cristina', 'pontuacao': 0},
        {'texto': 'Derek', 'pontuacao': 1},
        {'texto': 'Meredith', 'pontuacao': 0},
      ],
    },
    {
      'texto':
          'Antes de jogar as cinzas de sua mãe no lavatório da sala de cirurgia, onde Meredith estava guardando a urna?',
      'resposta': [
        {'texto': 'No carro', 'pontuacao': 0},
        {'texto': 'Guarda-roupas', 'pontuacao': 1},
        {'texto': 'Atrás do sofá', 'pontuacao': 0},
        {'texto': 'Na bolsa', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual seria o nome dado a série, antes de Greys Anatomy?',
      'resposta': [
        {'texto': 'Passiones', 'pontuacao': 0},
        {'texto': 'Medicine', 'pontuacao': 0},
        {'texto': 'Practice', 'pontuacao': 0},
        {'texto': 'Complications', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'A que atriz pertence o spin-off Private Pratice?',
      'resposta': [
        {'texto': 'Ellen Pompeo', 'pontuacao': 0},
        {'texto': 'Kate Walsh', 'pontuacao': 1},
        {'texto': 'Sandra Oh', 'pontuacao': 0},
        {'texto': 'Chandra Wilson', 'pontuacao': 0},
      ],
    },
  ];

  void responder(int pontuacao) {
    setState(() {
      perguntaSelecionada++;
      pontuacaoTotal += pontuacao;
    });
  }

  void reiniciarQuiz() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get questionsOnSelect {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quiz Greys Anatomy'),
          backgroundColor: const Color.fromARGB(248, 136, 134, 250),
        ),
        body: questionsOnSelect
            ? Column(children: [
                const SizedBox(
                  height: 150,
                ),
                FormsQuestions(
                  perguntas: perguntas,
                  perguntaSelecionada: perguntaSelecionada,
                  responder: responder,
                ),
              ])
            : ResultsQuestions(pontuacaoTotal, reiniciarQuiz),
      ),
    );
  }
}

class Strin {}
