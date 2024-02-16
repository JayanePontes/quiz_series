import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.text, this.onSelected, {super.key});

  final String text;
  final void Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelected,
        onHover: (value) => true,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color?>(
              const Color.fromARGB(248, 136, 134, 250)),
          shadowColor: MaterialStateProperty.all<Color?>(
              const Color.fromARGB(248, 4, 0, 236)),
          elevation: MaterialStateProperty.all<double?>(8.0),
        ),
        child: Text(text),
      ),
    );
  }
}
