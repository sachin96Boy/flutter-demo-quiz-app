import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetAll;
  const Result({super.key, required this.resultScore, required this.resetAll});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 30) {
      resultText = 'you are awesome and Innocent';
    } else if (resultScore <= 50) {
      resultText = 'you are preety likeale';
    } else if (resultScore <= 80) {
      resultText = 'Srange...!';
    } else {
      resultText = 'Dude you are bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () => resetAll(),
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
