import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(
      {super.key, required this.selectHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: Colors.blueGrey);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: style,
        child: Text(answerText),
      ),
    );
  }
}
