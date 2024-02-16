import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  Questao(this.text);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(188, 15, 13, 13)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
