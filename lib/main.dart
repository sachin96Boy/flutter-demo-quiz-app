import 'package:demo_app/answer.dart';
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
  var _questionIndex = 0;

  void answerChoosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("answer Given");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var quetions = [
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
          body: Column(children: [
            Question(
                questionText:
                    quetions[_questionIndex]['questionText'].toString()),
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
            ...(quetions[_questionIndex]['answer'] as List<String>)
                .map((e) => Answer(
                      selectHandler: answerChoosen,
                      answerText: e.toString(),
                    ))
                .toList()
          ]),
        ));
  }
}
