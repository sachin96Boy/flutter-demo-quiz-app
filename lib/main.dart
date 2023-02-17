import 'package:demo_app/answer.dart';
import 'package:demo_app/quiz.dart';
import 'package:demo_app/result.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/question.dart';

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
      'answer': ['black', 'red', 'green', 'white']
    },
    {
      'questionText': "What's yourFavourite Animal?",
      'answer': ['Rabbit', 'snake', 'Elephant', 'lion']
    },
    {
      'questionText': "What's your favourite Game",
      'answer': [
        'Assassins Creed',
        'Call of Duty',
        'Hitman',
        'Grand Theft Auto'
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerChoosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("answer Given");
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
              : const Result(),
        ));
  }
}
