import 'package:flutter/material.dart';

import 'package:demo_app/quiz.dart';
import 'package:demo_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _quetions = [
    {
      'questionText': "What's your favourite Colour?",
      'answer': [
        {'type': 'black', 'score': 10},
        {'type': 'red', 'score': 20},
        {'type': 'green', 'score': 30},
        {'type': 'white', 'score': 40}
      ]
    },
    {
      'questionText': "What's yourFavourite Animal?",
      'answer': [
        {'type': 'rabit', 'score': 10},
        {'type': 'snake', 'score': 20},
        {'type': 'elephant', 'score': 30},
        {'type': 'lion', 'score': 40}
      ]
    },
    {
      'questionText': "What's your favourite Game",
      'answer': [
        {'type': 'Assassins creed', 'score': 10},
        {'type': 'Call of Duty', 'score': 20},
        {'type': 'Hitman', 'score': 30},
        {'type': 'Grand Theft Auto', 'score': 40}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerChoosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print("answer Given");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Dummy Quiz App"),
          ),
          body: _questionIndex < _quetions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  questions: _quetions,
                  answerChoosen: _answerChoosen)
              : Result(resultScore: _totalScore, resetAll: _resetQuiz),
        ));
  }
}
