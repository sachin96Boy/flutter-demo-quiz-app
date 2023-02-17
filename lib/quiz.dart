import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:demo_app/answer.dart';
import 'package:demo_app/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final VoidCallback answerChoosen;
  const Quiz(
      {super.key,
      required this.questionIndex,
      required this.questions,
      required this.answerChoosen});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
          questionText: questions[questionIndex]['questionText'].toString()),
      // comment out old buttons
      // ElevatedButton(
      //   onPressed: answerChoosen,
      //   child: const Text("Answer 1"),
      // ),
      // ElevatedButton(
      //   onPressed: answerChoosen,
      //   child: const Text("Answer 2"),
      // ),
      // ElevatedButton(
      //   onPressed: answerChoosen,
      //   child: const Text("Answer 3"),
      // ),
      // // new buttons
      ...(questions[questionIndex]['answer'] as List<String>)
          .map((e) => Answer(
                selectHandler: answerChoosen,
                answerText: e.toString(),
              ))
          .toList()
    ]);
  }
}
